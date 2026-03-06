//
// Created by os on 7/31/24.
//
#include "../h/syscall_cpp.hpp"
#include "../h/sem.h"
#include "../h/ccb.hpp"


Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg){
    //thread_create(&myHandle, body, arg);
    //myHandle=new CCB(body, arg);
    CCB::createCoroutine(body, arg, &myHandle);
}

Thread::~Thread() { delete myHandle; }

int Thread::start() {
    //Scheduler::put(myHandle);
    return 0;
}

void Thread::threadBase(void* arg){
    Thread* thr = (Thread*)arg;
    thr->run();
}

void Thread::dispatch() {
    thread_dispatch();
}

int Thread::sleep(time_t) {
    return 0;
}

Thread::Thread() : body(threadBase), arg(this){
    CCB::createCoroutine(body, arg, &myHandle);
}



Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}



char Console::getc() {
    return ::getc();
}

void Console::putc(char ch) {
    ::putc(ch);
}