//
// Created by os on 7/23/24.
//

#include "../h/syscall_c.h"

void* mem_alloc (size_t size){
    uint64 volatile code = 0x01;
    size_t size_pom = (size+ MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    __asm__ volatile("mv a1, %0" :  : "r" (size_pom));
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return (void*)ret;
}

int mem_free (void* addr){
    uint64 volatile code = 0x02;
    void* adr= addr;
    __asm__ volatile("mv a1, %0" :  : "r" (adr));
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return ret;
}

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    uint64 volatile code = 0x11;

    __asm__ volatile("mv t0, %0" : : "r" (arg));
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (code));

    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return ret;
}

int thread_exit (){
    uint64 volatile code=0x12;

    __asm__ volatile("mv a0, %0" : : "r"(code));
    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return ret;
}

void thread_dispatch (){
    uint64 volatile code=0x13;

    __asm__ volatile("mv a0, %0" : : "r"(code));
    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));

}

int sem_open (sem_t* handle, unsigned init){
    uint64 code=0x21;

    __asm__ volatile("mv a2, %0" : : "r" (init));
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (code));

    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return ret;

}

int sem_close (sem_t handle){
    uint64 code=0x22;

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    __asm__ volatile("mv a0, %0" : : "r" (code));

    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return ret;

}

int sem_wait (sem_t id){
    uint64 code=0x23;

    __asm__ volatile("mv a1, %0" : : "r" (id));
    __asm__ volatile("mv a0, %0" : : "r" (code));

    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return ret;

}

int sem_signal (sem_t id){
    uint64 code=0x24;

    __asm__ volatile("mv a1, %0" : : "r" (id));
    __asm__ volatile("mv a0, %0" : : "r" (code));

    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return ret;
}

int sem_trywait(sem_t id){
    uint64 volatile code = 0x26;

    __asm__ volatile("mv a1, %0" :  : "r" (id));
    __asm__ volatile("mv a0, %0" :  : "r" (code));

    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    return ret;

}

int sem_timedwait(sem_t id, time_t timeout){
    return 0;
}


int time_sleep (time_t){
    return 0;
}

char getc (){
    uint64 volatile code = 0x41;

    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("ecall");

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));

    return (char)ret;

}

void putc (char ch){
    uint64 volatile code = 0x42;

    __asm__ volatile("mv a1, %0" :  : "r" (ch));
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("ecall");
}

void changeMode(){
    uint64 volatile code = 0x51;

    __asm__ volatile("mv a0, %0" :  : "r" (code));
    __asm__ volatile("ecall");
}