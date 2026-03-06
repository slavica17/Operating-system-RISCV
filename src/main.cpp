//
// Created by marko on 20.4.22..
//

#include "../h/ccb.hpp"
#include "../test/printing.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/userMain.hpp"

int main()
{
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    changeMode();

    int* niz1 = new int[100];
    int* niz2 = new int[100];
    delete[] niz1;
    delete[] niz2;

    CCB* thread;
    thread_create(&thread, nullptr, nullptr);
    CCB::running=thread;

    userMain();

    while(Scheduler::get()){
        thread_dispatch();
    }

    delete thread;
    return 0;
}
