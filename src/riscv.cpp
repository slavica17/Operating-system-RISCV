//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/ccb.hpp"
#include "../lib/console.h"
#include "../h/memAlloc.h"
#include "../h/sem.h"

void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile("sret");
}

void Riscv::handleSupervisorTrap()
{
    uint64 scause = r_scause();

    uint64 volatile code;
    __asm__ volatile("ld %0, 80(s0)" : "=r" (code));

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 volatile sepc = r_sepc()	+ 4;
        uint64 volatile sstatus = r_sstatus();

        switch(code){
            case 0x01:{
                uint64 block;
                __asm__ volatile ( "mv %0, a1" : "=r"( block ) );
                size_t size = block;

                void *ptr = MemAlloc::getInstance()->mem_alloc(size);

                __asm__ volatile("sd %0, 80(fp)" : : "r" (ptr));

                break;
            }

            case 0x02:{
                void *addr;
                __asm__ volatile ( "mv %0, a1" : "=r"( addr ) );

                int x = MemAlloc::getInstance()->mem_free(addr);

                __asm__ volatile("sd %0, 80(fp)" : : "r" (x));

                break;
            }

            case 0x11: {
                uint64 handle;
                uint64 startRoutine;
                uint64 arg;

                __asm__ volatile ( "mv %0, a1" : "=r"( handle ) );
                __asm__ volatile ( "mv %0, a2" : "=r"( startRoutine ) );
                __asm__ volatile ( "mv %0, t0" : "=r"( arg ) );

                CCB::createCoroutine((CCB::Body)startRoutine, (void*)arg, (thread_t*)handle);

                int ret;

                if((thread_t*)handle){
                    ret = 0;
                }
                else{
                    ret = -1;
                }

                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));

                break;
            }

            case 0x12: {

                uint64 ret;

                if (CCB::running == 0) ret = -1;
                else {
                    CCB::running->setFinished(true);
                    CCB::dispatch();
                    ret=0;
                }
                if(!(CCB::running->isFinished())) ret=-1;

                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));

                break;
            }

            case 0x13: {

                CCB::dispatch();

                break;
            }

            //sem_open
            case 0x21:{
                sem_t *handle;
                uint64 init;
                uint64 ret;

                __asm__ volatile ("mv %0, a1" : "=r"(handle));
                __asm__ volatile ("mv %0, a2" : "=r"(init));

                Sem::createSem((sem_t*)handle,init);

                if ((sem_t*)handle) {
                    ret = 0;
                }
                else {
                    ret = -1;
                }

                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));

                break;
            }

            //sem_close
            case 0x22: {
                sem_t handle;
                uint64 ret;

                __asm__ volatile ("mv %0, a1" : "=r"(handle));

                if(handle == 0) ret= -1;
                else{
                    handle->~Sem();
                    ret=0;
                }

                __asm__ volatile("sd %0, 80(fp)" : : "r" ((uint64)ret));

                break;

            }

            //wait
            case 0x23:{
                sem_t handle;
                uint64 ret;

                __asm__ volatile ("mv %0, a1" : "=r"(handle));
                if(handle == 0) ret= -1;
                else {
                    ret=handle->wait();
                }

                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));

                break;

            }

            //signal
            case 0x24:{
                sem_t handle;
                uint64 ret;

                __asm__ volatile ("mv %0, a1" : "=r"(handle));
                if(handle == 0) ret= -1;
                else {
                    ret = handle->signal();
                }

                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));

                break;


            }

            //trywait
            case 0x26:{
                sem_t id;
                uint64 ret;

                __asm__ volatile ("mv %0, a1" : "=r"(id));

                if(id == 0) ret= -1;
                else {
                    ret = id->value;
                }

                __asm__ volatile("sd %0, 80(s0)" : : "r" (ret));

                break;

            }

            //getc
            case 0x41:{
                char ret= __getc();
                __asm__ volatile("sd %0, 80(s0)" : : "r" (ret));

                break;
            }

            //putc
            case 0x42:{
                uint64 c;
                __asm__ volatile ("mv %0, a1" : "=r"(c));
                __putc(c);

                break;
            }

            case 0x51:{
                w_sstatus(sstatus);
                w_sepc(sepc);
                mc_sip(SIP_SSIP);
                mc_sstatus(SSTATUS_SPP);
                return;
            }
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }
    else
    {
        // unexpected trap cause
    }
}