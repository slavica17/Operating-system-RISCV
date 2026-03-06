//
// Created by marko on 20.4.22..
// PREUZETO SA VEZBI
//

#include "../h/ccb.hpp"
#include "../h/riscv.hpp"

CCB *CCB::running = nullptr;

void CCB::createCoroutine(Body body, void* arg, thread_t* handle)
{
    *handle = new CCB(body, arg);
}

void CCB::yield()
{
    //Riscv::pushRegisters();

    CCB::dispatch();

    //Riscv::popRegisters();
}

void CCB::dispatch()
{
    CCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

    CCB::contextSwitch(&old->context, &running->context);
}

void CCB::threadWrapper(){
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
    thread_dispatch();
}
