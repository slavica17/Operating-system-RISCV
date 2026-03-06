//
// Created by marko on 20.4.22..
// PREUZETO SA VEZBI
//

#ifndef OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP
#define OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "../h/syscall_c.h"

// Coroutine Control Block
class CCB{
public:
    ~CCB() { delete[] stack; }

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }

    using Body = void (*)(void*);

    static void createCoroutine(Body body, void* arg, thread_t* handle);

    static void yield();

    static void dispatch();

    static CCB *running;

    static void threadWrapper();

private:
    explicit CCB(Body body, void* arg) :
            body(body),
            arg(arg),
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            context({body != nullptr ? (uint64) &threadWrapper : 0,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            finished(false)
    {
        if (body != nullptr) { Scheduler::put(this); }
    }

    friend class Sem;

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void* arg;
    uint64 *stack;
    Context context;
    bool finished;

    static void contextSwitch(Context *oldContext, Context *runningContext);

};

#endif //OS1_VEZBE07_RISCV_CONTEXT_SWITCH_1_SYNCHRONOUS_CCB_HPP
