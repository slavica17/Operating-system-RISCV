#ifndef _semaphore_
#define _semaphore_

#include "../h/ccb.hpp"
#include "../h/list.hpp"

class Sem {
private:
    Sem (unsigned short init=1) : value(init) {}
    List<CCB> blocked;

protected:
    void block ();
    void unblock ();

public:
    int value;
    static void createSem(sem_t *handle, uint64 val);
    int wait ();
    int signal ();
    ~Sem();

};
#endif
