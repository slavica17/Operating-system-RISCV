//
// Created by os on 7/23/24.
//

#include "../h/memAlloc.h"

//1.zad 3.klk, jun 2022.god
MemAlloc* MemAlloc::getInstance() {
    static MemAlloc instance;
    return &instance;
}

void* MemAlloc::mem_alloc(size_t size) {
    //ako je lista prazna, init prvi slobodni blok
    if(!head){
        MemFree* firstBlock=(MemFree*)HEAP_START_ADDR;
        firstBlock->size=((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR-sizeof(MemFree))/MEM_BLOCK_SIZE;
        firstBlock->next= nullptr;
        head=firstBlock;
    }

    MemFree* cur=head;
    MemFree* prev= nullptr;

    while(cur && cur->size<size){
        prev=cur;
        cur=cur->next;
    }

    if(!cur) return nullptr;

    if(cur->size==size){
        MemFree* nextBlock=cur->next;
        if(prev){
            prev->next=nextBlock;
        } else{
            head=nextBlock;
        }
        return (void*)((char*)cur + sizeof(MemFree));
    } else{
        MemFree* block=(MemFree*)((char*)cur + sizeof(MemFree) + size*MEM_BLOCK_SIZE);
        block->size=(cur->size - size - sizeof(MemFree))/MEM_BLOCK_SIZE;
        cur->size=size;
        block->next=cur->next;
        if(prev){
            prev->next=block;
        } else{
            head=block;
        }
        return (void*)((char*)cur + sizeof(MemFree));
    }
}

int MemAlloc::mem_free(void* addr) {
    if (!addr || addr < (char*)HEAP_START_ADDR || addr > (char*)HEAP_END_ADDR)
        return -1;

    MemFree* newSeg = (MemFree*)((char*)addr - sizeof(MemFree));
    if (newSeg->size <= 0)
        return -2;

    MemFree* cur = nullptr;
    MemFree* prev = nullptr;

    if (!head || addr < (char*)head) {
        // Umetanje kao prvi element
        newSeg->next = head;
        head = newSeg;
    } else {
        // pozicija za umetanje novog segmenta
        for (cur = head; cur->next != nullptr && addr > (char*)(cur->next); cur = cur->next) {
            prev = cur;
        }
        newSeg->next = cur->next;
        cur->next = newSeg;
    }

    try_to_join(newSeg);
    if (prev) {
        try_to_join(prev);
    }

    return 0;
}

//2.zad 2.klk, sept 2015
void MemAlloc ::try_to_join(MemAlloc::MemFree *cur) {
    if(cur->next && (char*)cur + sizeof(MemFree) + cur->size*MEM_BLOCK_SIZE == (char*)cur->next){
        cur->size += cur->next->size;
        cur->next = cur->next->next;
    }
}