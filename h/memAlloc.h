//
// Created by os on 7/23/24.
//

#ifndef PROJECT_BASE_V1_1_MEMALLOC_HPP
#define PROJECT_BASE_V1_1_MEMALLOC_HPP

#include "../lib/hw.h"

class MemAlloc {
public:
    void* mem_alloc(size_t size);
    int mem_free(void* adr);
    static MemAlloc* getInstance();

private:
    struct MemFree{
        size_t size;
        MemFree* next;
    };
    MemFree* head;
    void try_to_join(MemFree* cur);
};


#endif //PROJECT_BASE_V1_1_MEMALLOC_HPP
