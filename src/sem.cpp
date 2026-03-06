//
// Created by os on 7/31/24.
//
#include "../h/sem.h"
#include "../h/ccb.hpp"

int Sem::wait() {
    if(--value < 0) block();
    return 0;
}

int Sem::signal() {
    if(++value <= 0) unblock();
    return 0;

}

void Sem::block() {
    CCB *currentThread = CCB::running;
    blocked.addLast(currentThread);
    CCB::running = Scheduler::get();
    CCB::contextSwitch(&currentThread->context, &CCB::running->context);
}

void Sem::unblock() {
    CCB* fisrtBlocked = blocked.removeFirst();
    Scheduler::put(fisrtBlocked);
}
void Sem::createSem(sem_t* handle, uint64 val) {
    *handle = new Sem(val);
}

Sem::~Sem() {
    for (CCB* blockedThread = blocked.removeFirst(); blockedThread != nullptr; blockedThread = blocked.removeFirst()) {
        Scheduler::put(blockedThread);
    }
}


