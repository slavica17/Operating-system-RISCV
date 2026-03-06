
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	3c013103          	ld	sp,960(sp) # 8000a3c0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	33d050ef          	jal	ra,80005b58 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
// PREUZETO SA VEZBI
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    // https://sourceware.org/binutils/docs/as/Irp.html
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04a13823          	sd	a0,80(sp)
    80001130:	04b13c23          	sd	a1,88(sp)
    80001134:	06c13023          	sd	a2,96(sp)
    80001138:	06d13423          	sd	a3,104(sp)
    8000113c:	06e13823          	sd	a4,112(sp)
    80001140:	06f13c23          	sd	a5,120(sp)
    80001144:	09013023          	sd	a6,128(sp)
    80001148:	09113423          	sd	a7,136(sp)
    8000114c:	09213823          	sd	s2,144(sp)
    80001150:	09313c23          	sd	s3,152(sp)
    80001154:	0b413023          	sd	s4,160(sp)
    80001158:	0b513423          	sd	s5,168(sp)
    8000115c:	0b613823          	sd	s6,176(sp)
    80001160:	0b713c23          	sd	s7,184(sp)
    80001164:	0d813023          	sd	s8,192(sp)
    80001168:	0d913423          	sd	s9,200(sp)
    8000116c:	0da13823          	sd	s10,208(sp)
    80001170:	0db13c23          	sd	s11,216(sp)
    80001174:	0fc13023          	sd	t3,224(sp)
    80001178:	0fd13423          	sd	t4,232(sp)
    8000117c:	0fe13823          	sd	t5,240(sp)
    80001180:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001184:	279000ef          	jal	ra,80001bfc <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001188:	00013003          	ld	zero,0(sp)
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	01013103          	ld	sp,16(sp)
    80001194:	01813183          	ld	gp,24(sp)
    80001198:	02013203          	ld	tp,32(sp)
    8000119c:	02813283          	ld	t0,40(sp)
    800011a0:	03013303          	ld	t1,48(sp)
    800011a4:	03813383          	ld	t2,56(sp)
    800011a8:	04013403          	ld	s0,64(sp)
    800011ac:	04813483          	ld	s1,72(sp)
    800011b0:	05013503          	ld	a0,80(sp)
    800011b4:	05813583          	ld	a1,88(sp)
    800011b8:	06013603          	ld	a2,96(sp)
    800011bc:	06813683          	ld	a3,104(sp)
    800011c0:	07013703          	ld	a4,112(sp)
    800011c4:	07813783          	ld	a5,120(sp)
    800011c8:	08013803          	ld	a6,128(sp)
    800011cc:	08813883          	ld	a7,136(sp)
    800011d0:	09013903          	ld	s2,144(sp)
    800011d4:	09813983          	ld	s3,152(sp)
    800011d8:	0a013a03          	ld	s4,160(sp)
    800011dc:	0a813a83          	ld	s5,168(sp)
    800011e0:	0b013b03          	ld	s6,176(sp)
    800011e4:	0b813b83          	ld	s7,184(sp)
    800011e8:	0c013c03          	ld	s8,192(sp)
    800011ec:	0c813c83          	ld	s9,200(sp)
    800011f0:	0d013d03          	ld	s10,208(sp)
    800011f4:	0d813d83          	ld	s11,216(sp)
    800011f8:	0e013e03          	ld	t3,224(sp)
    800011fc:	0e813e83          	ld	t4,232(sp)
    80001200:	0f013f03          	ld	t5,240(sp)
    80001204:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001208:	10010113          	addi	sp,sp,256

    sret
    8000120c:	10200073          	sret

0000000080001210 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3CCB13contextSwitchEPNS_7ContextES1_
.type _ZN3CCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3CCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001224:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001228:	00b29a63          	bne	t0,a1,8000123c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000122c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001230:	fe029ae3          	bnez	t0,80001224 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001234:	00000513          	li	a0,0
    jr ra                  # Return.
    80001238:	00008067          	ret

000000008000123c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000123c:	00100513          	li	a0,1
    80001240:	00008067          	ret

0000000080001244 <_Z9mem_allocm>:
// Created by os on 7/23/24.
//

#include "../h/syscall_c.h"

void* mem_alloc (size_t size){
    80001244:	fe010113          	addi	sp,sp,-32
    80001248:	00813c23          	sd	s0,24(sp)
    8000124c:	02010413          	addi	s0,sp,32
    uint64 volatile code = 0x01;
    80001250:	00100793          	li	a5,1
    80001254:	fef43423          	sd	a5,-24(s0)
    size_t size_pom = (size+ MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    80001258:	03f50513          	addi	a0,a0,63
    8000125c:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r" (size_pom));
    80001260:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    80001264:	fe843783          	ld	a5,-24(s0)
    80001268:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    8000126c:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001270:	00050513          	mv	a0,a0

    return (void*)ret;
}
    80001274:	01813403          	ld	s0,24(sp)
    80001278:	02010113          	addi	sp,sp,32
    8000127c:	00008067          	ret

0000000080001280 <_Z8mem_freePv>:

int mem_free (void* addr){
    80001280:	fe010113          	addi	sp,sp,-32
    80001284:	00813c23          	sd	s0,24(sp)
    80001288:	02010413          	addi	s0,sp,32
    uint64 volatile code = 0x02;
    8000128c:	00200793          	li	a5,2
    80001290:	fef43423          	sd	a5,-24(s0)
    void* adr= addr;
    __asm__ volatile("mv a1, %0" :  : "r" (adr));
    80001294:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    80001298:	fe843783          	ld	a5,-24(s0)
    8000129c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800012a0:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800012a4:	00050513          	mv	a0,a0

    return ret;
}
    800012a8:	0005051b          	sext.w	a0,a0
    800012ac:	01813403          	ld	s0,24(sp)
    800012b0:	02010113          	addi	sp,sp,32
    800012b4:	00008067          	ret

00000000800012b8 <_Z13thread_createPP3CCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    800012b8:	fe010113          	addi	sp,sp,-32
    800012bc:	00813c23          	sd	s0,24(sp)
    800012c0:	02010413          	addi	s0,sp,32
    uint64 volatile code = 0x11;
    800012c4:	01100793          	li	a5,17
    800012c8:	fef43423          	sd	a5,-24(s0)

    __asm__ volatile("mv t0, %0" : : "r" (arg));
    800012cc:	00060293          	mv	t0,a2
    __asm__ volatile("mv a2, %0" : : "r" (start_routine));
    800012d0:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    800012d4:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    800012d8:	fe843783          	ld	a5,-24(s0)
    800012dc:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800012e0:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800012e4:	00050513          	mv	a0,a0

    return ret;
}
    800012e8:	0005051b          	sext.w	a0,a0
    800012ec:	01813403          	ld	s0,24(sp)
    800012f0:	02010113          	addi	sp,sp,32
    800012f4:	00008067          	ret

00000000800012f8 <_Z11thread_exitv>:

int thread_exit (){
    800012f8:	fe010113          	addi	sp,sp,-32
    800012fc:	00813c23          	sd	s0,24(sp)
    80001300:	02010413          	addi	s0,sp,32
    uint64 volatile code=0x12;
    80001304:	01200793          	li	a5,18
    80001308:	fef43423          	sd	a5,-24(s0)

    __asm__ volatile("mv a0, %0" : : "r"(code));
    8000130c:	fe843783          	ld	a5,-24(s0)
    80001310:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001314:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001318:	00050513          	mv	a0,a0

    return ret;
}
    8000131c:	0005051b          	sext.w	a0,a0
    80001320:	01813403          	ld	s0,24(sp)
    80001324:	02010113          	addi	sp,sp,32
    80001328:	00008067          	ret

000000008000132c <_Z15thread_dispatchv>:

void thread_dispatch (){
    8000132c:	fe010113          	addi	sp,sp,-32
    80001330:	00813c23          	sd	s0,24(sp)
    80001334:	02010413          	addi	s0,sp,32
    uint64 volatile code=0x13;
    80001338:	01300793          	li	a5,19
    8000133c:	fef43423          	sd	a5,-24(s0)

    __asm__ volatile("mv a0, %0" : : "r"(code));
    80001340:	fe843783          	ld	a5,-24(s0)
    80001344:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001348:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000134c:	00050793          	mv	a5,a0

}
    80001350:	01813403          	ld	s0,24(sp)
    80001354:	02010113          	addi	sp,sp,32
    80001358:	00008067          	ret

000000008000135c <_Z8sem_openPP3Semj>:

int sem_open (sem_t* handle, unsigned init){
    8000135c:	ff010113          	addi	sp,sp,-16
    80001360:	00813423          	sd	s0,8(sp)
    80001364:	01010413          	addi	s0,sp,16
    uint64 code=0x21;

    __asm__ volatile("mv a2, %0" : : "r" (init));
    80001368:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000136c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001370:	02100793          	li	a5,33
    80001374:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001378:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000137c:	00050513          	mv	a0,a0

    return ret;

}
    80001380:	0005051b          	sext.w	a0,a0
    80001384:	00813403          	ld	s0,8(sp)
    80001388:	01010113          	addi	sp,sp,16
    8000138c:	00008067          	ret

0000000080001390 <_Z9sem_closeP3Sem>:

int sem_close (sem_t handle){
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00813423          	sd	s0,8(sp)
    80001398:	01010413          	addi	s0,sp,16
    uint64 code=0x22;

    __asm__ volatile("mv a1, %0" : : "r" (handle));
    8000139c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    800013a0:	02200793          	li	a5,34
    800013a4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013a8:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800013ac:	00050513          	mv	a0,a0

    return ret;

}
    800013b0:	0005051b          	sext.w	a0,a0
    800013b4:	00813403          	ld	s0,8(sp)
    800013b8:	01010113          	addi	sp,sp,16
    800013bc:	00008067          	ret

00000000800013c0 <_Z8sem_waitP3Sem>:

int sem_wait (sem_t id){
    800013c0:	ff010113          	addi	sp,sp,-16
    800013c4:	00813423          	sd	s0,8(sp)
    800013c8:	01010413          	addi	s0,sp,16
    uint64 code=0x23;

    __asm__ volatile("mv a1, %0" : : "r" (id));
    800013cc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    800013d0:	02300793          	li	a5,35
    800013d4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013d8:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800013dc:	00050513          	mv	a0,a0

    return ret;

}
    800013e0:	0005051b          	sext.w	a0,a0
    800013e4:	00813403          	ld	s0,8(sp)
    800013e8:	01010113          	addi	sp,sp,16
    800013ec:	00008067          	ret

00000000800013f0 <_Z10sem_signalP3Sem>:

int sem_signal (sem_t id){
    800013f0:	ff010113          	addi	sp,sp,-16
    800013f4:	00813423          	sd	s0,8(sp)
    800013f8:	01010413          	addi	s0,sp,16
    uint64 code=0x24;

    __asm__ volatile("mv a1, %0" : : "r" (id));
    800013fc:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" : : "r" (code));
    80001400:	02400793          	li	a5,36
    80001404:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001408:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    8000140c:	00050513          	mv	a0,a0

    return ret;
}
    80001410:	0005051b          	sext.w	a0,a0
    80001414:	00813403          	ld	s0,8(sp)
    80001418:	01010113          	addi	sp,sp,16
    8000141c:	00008067          	ret

0000000080001420 <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id){
    80001420:	fe010113          	addi	sp,sp,-32
    80001424:	00813c23          	sd	s0,24(sp)
    80001428:	02010413          	addi	s0,sp,32
    uint64 volatile code = 0x26;
    8000142c:	02600793          	li	a5,38
    80001430:	fef43423          	sd	a5,-24(s0)

    __asm__ volatile("mv a1, %0" :  : "r" (id));
    80001434:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    80001438:	fe843783          	ld	a5,-24(s0)
    8000143c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001440:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    80001444:	00050513          	mv	a0,a0
    return ret;

}
    80001448:	0005051b          	sext.w	a0,a0
    8000144c:	01813403          	ld	s0,24(sp)
    80001450:	02010113          	addi	sp,sp,32
    80001454:	00008067          	ret

0000000080001458 <_Z13sem_timedwaitP3Semm>:

int sem_timedwait(sem_t id, time_t timeout){
    80001458:	ff010113          	addi	sp,sp,-16
    8000145c:	00813423          	sd	s0,8(sp)
    80001460:	01010413          	addi	s0,sp,16
    return 0;
}
    80001464:	00000513          	li	a0,0
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_Z10time_sleepm>:


int time_sleep (time_t){
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00813423          	sd	s0,8(sp)
    8000147c:	01010413          	addi	s0,sp,16
    return 0;
}
    80001480:	00000513          	li	a0,0
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <_Z4getcv>:

char getc (){
    80001490:	fe010113          	addi	sp,sp,-32
    80001494:	00813c23          	sd	s0,24(sp)
    80001498:	02010413          	addi	s0,sp,32
    uint64 volatile code = 0x41;
    8000149c:	04100793          	li	a5,65
    800014a0:	fef43423          	sd	a5,-24(s0)

    __asm__ volatile("mv a0, %0" :  : "r" (code));
    800014a4:	fe843783          	ld	a5,-24(s0)
    800014a8:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014ac:	00000073          	ecall

    uint64 ret;

    __asm__ volatile("mv %0, a0" : "=r" (ret));
    800014b0:	00050513          	mv	a0,a0

    return (char)ret;

}
    800014b4:	0ff57513          	andi	a0,a0,255
    800014b8:	01813403          	ld	s0,24(sp)
    800014bc:	02010113          	addi	sp,sp,32
    800014c0:	00008067          	ret

00000000800014c4 <_Z4putcc>:

void putc (char ch){
    800014c4:	fe010113          	addi	sp,sp,-32
    800014c8:	00813c23          	sd	s0,24(sp)
    800014cc:	02010413          	addi	s0,sp,32
    uint64 volatile code = 0x42;
    800014d0:	04200793          	li	a5,66
    800014d4:	fef43423          	sd	a5,-24(s0)

    __asm__ volatile("mv a1, %0" :  : "r" (ch));
    800014d8:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0, %0" :  : "r" (code));
    800014dc:	fe843783          	ld	a5,-24(s0)
    800014e0:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    800014e4:	00000073          	ecall
}
    800014e8:	01813403          	ld	s0,24(sp)
    800014ec:	02010113          	addi	sp,sp,32
    800014f0:	00008067          	ret

00000000800014f4 <_Z10changeModev>:

void changeMode(){
    800014f4:	fe010113          	addi	sp,sp,-32
    800014f8:	00813c23          	sd	s0,24(sp)
    800014fc:	02010413          	addi	s0,sp,32
    uint64 volatile code = 0x51;
    80001500:	05100793          	li	a5,81
    80001504:	fef43423          	sd	a5,-24(s0)

    __asm__ volatile("mv a0, %0" :  : "r" (code));
    80001508:	fe843783          	ld	a5,-24(s0)
    8000150c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001510:	00000073          	ecall
    80001514:	01813403          	ld	s0,24(sp)
    80001518:	02010113          	addi	sp,sp,32
    8000151c:	00008067          	ret

0000000080001520 <_Znwm>:
#include "../h/syscall_c.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001520:	ff010113          	addi	sp,sp,-16
    80001524:	00113423          	sd	ra,8(sp)
    80001528:	00813023          	sd	s0,0(sp)
    8000152c:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001530:	00000097          	auipc	ra,0x0
    80001534:	d14080e7          	jalr	-748(ra) # 80001244 <_Z9mem_allocm>
    //return __mem_alloc(n);
}
    80001538:	00813083          	ld	ra,8(sp)
    8000153c:	00013403          	ld	s0,0(sp)
    80001540:	01010113          	addi	sp,sp,16
    80001544:	00008067          	ret

0000000080001548 <_Znam>:

void *operator new[](size_t n)
{
    80001548:	ff010113          	addi	sp,sp,-16
    8000154c:	00113423          	sd	ra,8(sp)
    80001550:	00813023          	sd	s0,0(sp)
    80001554:	01010413          	addi	s0,sp,16
    return mem_alloc(n);
    80001558:	00000097          	auipc	ra,0x0
    8000155c:	cec080e7          	jalr	-788(ra) # 80001244 <_Z9mem_allocm>
    //return __mem_alloc(n);
}
    80001560:	00813083          	ld	ra,8(sp)
    80001564:	00013403          	ld	s0,0(sp)
    80001568:	01010113          	addi	sp,sp,16
    8000156c:	00008067          	ret

0000000080001570 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001570:	ff010113          	addi	sp,sp,-16
    80001574:	00113423          	sd	ra,8(sp)
    80001578:	00813023          	sd	s0,0(sp)
    8000157c:	01010413          	addi	s0,sp,16
    mem_free(p);
    80001580:	00000097          	auipc	ra,0x0
    80001584:	d00080e7          	jalr	-768(ra) # 80001280 <_Z8mem_freePv>
    //__mem_free(p);
}
    80001588:	00813083          	ld	ra,8(sp)
    8000158c:	00013403          	ld	s0,0(sp)
    80001590:	01010113          	addi	sp,sp,16
    80001594:	00008067          	ret

0000000080001598 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001598:	ff010113          	addi	sp,sp,-16
    8000159c:	00113423          	sd	ra,8(sp)
    800015a0:	00813023          	sd	s0,0(sp)
    800015a4:	01010413          	addi	s0,sp,16
    mem_free(p);
    800015a8:	00000097          	auipc	ra,0x0
    800015ac:	cd8080e7          	jalr	-808(ra) # 80001280 <_Z8mem_freePv>
    //__mem_free(p);
    800015b0:	00813083          	ld	ra,8(sp)
    800015b4:	00013403          	ld	s0,0(sp)
    800015b8:	01010113          	addi	sp,sp,16
    800015bc:	00008067          	ret

00000000800015c0 <main>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../h/userMain.hpp"

int main()
{
    800015c0:	fd010113          	addi	sp,sp,-48
    800015c4:	02113423          	sd	ra,40(sp)
    800015c8:	02813023          	sd	s0,32(sp)
    800015cc:	00913c23          	sd	s1,24(sp)
    800015d0:	01213823          	sd	s2,16(sp)
    800015d4:	03010413          	addi	s0,sp,48
    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800015d8:	00009797          	auipc	a5,0x9
    800015dc:	de07b783          	ld	a5,-544(a5) # 8000a3b8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800015e0:	10579073          	csrw	stvec,a5

    changeMode();
    800015e4:	00000097          	auipc	ra,0x0
    800015e8:	f10080e7          	jalr	-240(ra) # 800014f4 <_Z10changeModev>

    int* niz1 = new int[100];
    800015ec:	19000513          	li	a0,400
    800015f0:	00000097          	auipc	ra,0x0
    800015f4:	f58080e7          	jalr	-168(ra) # 80001548 <_Znam>
    800015f8:	00050913          	mv	s2,a0
    int* niz2 = new int[100];
    800015fc:	19000513          	li	a0,400
    80001600:	00000097          	auipc	ra,0x0
    80001604:	f48080e7          	jalr	-184(ra) # 80001548 <_Znam>
    80001608:	00050493          	mv	s1,a0
    delete[] niz1;
    8000160c:	00090863          	beqz	s2,8000161c <main+0x5c>
    80001610:	00090513          	mv	a0,s2
    80001614:	00000097          	auipc	ra,0x0
    80001618:	f84080e7          	jalr	-124(ra) # 80001598 <_ZdaPv>
    delete[] niz2;
    8000161c:	00048863          	beqz	s1,8000162c <main+0x6c>
    80001620:	00048513          	mv	a0,s1
    80001624:	00000097          	auipc	ra,0x0
    80001628:	f74080e7          	jalr	-140(ra) # 80001598 <_ZdaPv>

    CCB* thread;
    thread_create(&thread, nullptr, nullptr);
    8000162c:	00000613          	li	a2,0
    80001630:	00000593          	li	a1,0
    80001634:	fd840513          	addi	a0,s0,-40
    80001638:	00000097          	auipc	ra,0x0
    8000163c:	c80080e7          	jalr	-896(ra) # 800012b8 <_Z13thread_createPP3CCBPFvPvES2_>
    CCB::running=thread;
    80001640:	00009797          	auipc	a5,0x9
    80001644:	d887b783          	ld	a5,-632(a5) # 8000a3c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001648:	fd843703          	ld	a4,-40(s0)
    8000164c:	00e7b023          	sd	a4,0(a5)

    userMain();
    80001650:	00004097          	auipc	ra,0x4
    80001654:	98c080e7          	jalr	-1652(ra) # 80004fdc <_Z8userMainv>

    while(Scheduler::get()){
    80001658:	00001097          	auipc	ra,0x1
    8000165c:	b00080e7          	jalr	-1280(ra) # 80002158 <_ZN9Scheduler3getEv>
    80001660:	00050863          	beqz	a0,80001670 <main+0xb0>
        thread_dispatch();
    80001664:	00000097          	auipc	ra,0x0
    80001668:	cc8080e7          	jalr	-824(ra) # 8000132c <_Z15thread_dispatchv>
    8000166c:	fedff06f          	j	80001658 <main+0x98>
    }

    delete thread;
    80001670:	fd843483          	ld	s1,-40(s0)
    80001674:	02048063          	beqz	s1,80001694 <main+0xd4>
#include "../h/syscall_c.h"

// Coroutine Control Block
class CCB{
public:
    ~CCB() { delete[] stack; }
    80001678:	0104b503          	ld	a0,16(s1)
    8000167c:	00050663          	beqz	a0,80001688 <main+0xc8>
    80001680:	00000097          	auipc	ra,0x0
    80001684:	f18080e7          	jalr	-232(ra) # 80001598 <_ZdaPv>
    80001688:	00048513          	mv	a0,s1
    8000168c:	00000097          	auipc	ra,0x0
    80001690:	ee4080e7          	jalr	-284(ra) # 80001570 <_ZdlPv>
    return 0;
}
    80001694:	00000513          	li	a0,0
    80001698:	02813083          	ld	ra,40(sp)
    8000169c:	02013403          	ld	s0,32(sp)
    800016a0:	01813483          	ld	s1,24(sp)
    800016a4:	01013903          	ld	s2,16(sp)
    800016a8:	03010113          	addi	sp,sp,48
    800016ac:	00008067          	ret

00000000800016b0 <_ZN3CCB13threadWrapperEv>:
    running = Scheduler::get();

    CCB::contextSwitch(&old->context, &running->context);
}

void CCB::threadWrapper(){
    800016b0:	fe010113          	addi	sp,sp,-32
    800016b4:	00113c23          	sd	ra,24(sp)
    800016b8:	00813823          	sd	s0,16(sp)
    800016bc:	00913423          	sd	s1,8(sp)
    800016c0:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800016c4:	00000097          	auipc	ra,0x0
    800016c8:	518080e7          	jalr	1304(ra) # 80001bdc <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800016cc:	00009497          	auipc	s1,0x9
    800016d0:	d5448493          	addi	s1,s1,-684 # 8000a420 <_ZN3CCB7runningE>
    800016d4:	0004b783          	ld	a5,0(s1)
    800016d8:	0007b703          	ld	a4,0(a5)
    800016dc:	0087b503          	ld	a0,8(a5)
    800016e0:	000700e7          	jalr	a4
    running->setFinished(true);
    800016e4:	0004b783          	ld	a5,0(s1)

    bool isFinished() const { return finished; }

    void setFinished(bool value) { finished = value; }
    800016e8:	00100713          	li	a4,1
    800016ec:	02e78423          	sb	a4,40(a5)
    thread_dispatch();
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	c3c080e7          	jalr	-964(ra) # 8000132c <_Z15thread_dispatchv>
}
    800016f8:	01813083          	ld	ra,24(sp)
    800016fc:	01013403          	ld	s0,16(sp)
    80001700:	00813483          	ld	s1,8(sp)
    80001704:	02010113          	addi	sp,sp,32
    80001708:	00008067          	ret

000000008000170c <_ZN3CCB15createCoroutineEPFvPvES0_PPS_>:
{
    8000170c:	fd010113          	addi	sp,sp,-48
    80001710:	02113423          	sd	ra,40(sp)
    80001714:	02813023          	sd	s0,32(sp)
    80001718:	00913c23          	sd	s1,24(sp)
    8000171c:	01213823          	sd	s2,16(sp)
    80001720:	01313423          	sd	s3,8(sp)
    80001724:	01413023          	sd	s4,0(sp)
    80001728:	03010413          	addi	s0,sp,48
    8000172c:	00050913          	mv	s2,a0
    80001730:	00058a13          	mv	s4,a1
    80001734:	00060993          	mv	s3,a2
    *handle = new CCB(body, arg);
    80001738:	03000513          	li	a0,48
    8000173c:	00000097          	auipc	ra,0x0
    80001740:	de4080e7          	jalr	-540(ra) # 80001520 <_Znwm>
    80001744:	00050493          	mv	s1,a0
            arg(arg),
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            context({body != nullptr ? (uint64) &threadWrapper : 0,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            finished(false)
    80001748:	01253023          	sd	s2,0(a0)
    8000174c:	01453423          	sd	s4,8(a0)
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80001750:	00090a63          	beqz	s2,80001764 <_ZN3CCB15createCoroutineEPFvPvES0_PPS_+0x58>
    80001754:	00008537          	lui	a0,0x8
    80001758:	00000097          	auipc	ra,0x0
    8000175c:	df0080e7          	jalr	-528(ra) # 80001548 <_Znam>
    80001760:	0080006f          	j	80001768 <_ZN3CCB15createCoroutineEPFvPvES0_PPS_+0x5c>
    80001764:	00000513          	li	a0,0
            finished(false)
    80001768:	00a4b823          	sd	a0,16(s1)
            context({body != nullptr ? (uint64) &threadWrapper : 0,
    8000176c:	02090c63          	beqz	s2,800017a4 <_ZN3CCB15createCoroutineEPFvPvES0_PPS_+0x98>
    80001770:	00000797          	auipc	a5,0x0
    80001774:	f4078793          	addi	a5,a5,-192 # 800016b0 <_ZN3CCB13threadWrapperEv>
            finished(false)
    80001778:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    8000177c:	02050863          	beqz	a0,800017ac <_ZN3CCB15createCoroutineEPFvPvES0_PPS_+0xa0>
    80001780:	000087b7          	lui	a5,0x8
    80001784:	00f50533          	add	a0,a0,a5
            finished(false)
    80001788:	02a4b023          	sd	a0,32(s1)
    8000178c:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    80001790:	02090263          	beqz	s2,800017b4 <_ZN3CCB15createCoroutineEPFvPvES0_PPS_+0xa8>
    80001794:	00048513          	mv	a0,s1
    80001798:	00001097          	auipc	ra,0x1
    8000179c:	a28080e7          	jalr	-1496(ra) # 800021c0 <_ZN9Scheduler3putEP3CCB>
    800017a0:	0140006f          	j	800017b4 <_ZN3CCB15createCoroutineEPFvPvES0_PPS_+0xa8>
            context({body != nullptr ? (uint64) &threadWrapper : 0,
    800017a4:	00000793          	li	a5,0
    800017a8:	fd1ff06f          	j	80001778 <_ZN3CCB15createCoroutineEPFvPvES0_PPS_+0x6c>
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800017ac:	00000513          	li	a0,0
    800017b0:	fd9ff06f          	j	80001788 <_ZN3CCB15createCoroutineEPFvPvES0_PPS_+0x7c>
    800017b4:	0099b023          	sd	s1,0(s3)
}
    800017b8:	02813083          	ld	ra,40(sp)
    800017bc:	02013403          	ld	s0,32(sp)
    800017c0:	01813483          	ld	s1,24(sp)
    800017c4:	01013903          	ld	s2,16(sp)
    800017c8:	00813983          	ld	s3,8(sp)
    800017cc:	00013a03          	ld	s4,0(sp)
    800017d0:	03010113          	addi	sp,sp,48
    800017d4:	00008067          	ret
    800017d8:	00050913          	mv	s2,a0
    *handle = new CCB(body, arg);
    800017dc:	00048513          	mv	a0,s1
    800017e0:	00000097          	auipc	ra,0x0
    800017e4:	d90080e7          	jalr	-624(ra) # 80001570 <_ZdlPv>
    800017e8:	00090513          	mv	a0,s2
    800017ec:	0000a097          	auipc	ra,0xa
    800017f0:	d6c080e7          	jalr	-660(ra) # 8000b558 <_Unwind_Resume>

00000000800017f4 <_ZN3CCB8dispatchEv>:
{
    800017f4:	fe010113          	addi	sp,sp,-32
    800017f8:	00113c23          	sd	ra,24(sp)
    800017fc:	00813823          	sd	s0,16(sp)
    80001800:	00913423          	sd	s1,8(sp)
    80001804:	02010413          	addi	s0,sp,32
    CCB *old = running;
    80001808:	00009497          	auipc	s1,0x9
    8000180c:	c184b483          	ld	s1,-1000(s1) # 8000a420 <_ZN3CCB7runningE>
    bool isFinished() const { return finished; }
    80001810:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80001814:	02078c63          	beqz	a5,8000184c <_ZN3CCB8dispatchEv+0x58>
    running = Scheduler::get();
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	940080e7          	jalr	-1728(ra) # 80002158 <_ZN9Scheduler3getEv>
    80001820:	00009797          	auipc	a5,0x9
    80001824:	c0a7b023          	sd	a0,-1024(a5) # 8000a420 <_ZN3CCB7runningE>
    CCB::contextSwitch(&old->context, &running->context);
    80001828:	01850593          	addi	a1,a0,24 # 8018 <_entry-0x7fff7fe8>
    8000182c:	01848513          	addi	a0,s1,24
    80001830:	00000097          	auipc	ra,0x0
    80001834:	9e0080e7          	jalr	-1568(ra) # 80001210 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    80001838:	01813083          	ld	ra,24(sp)
    8000183c:	01013403          	ld	s0,16(sp)
    80001840:	00813483          	ld	s1,8(sp)
    80001844:	02010113          	addi	sp,sp,32
    80001848:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    8000184c:	00048513          	mv	a0,s1
    80001850:	00001097          	auipc	ra,0x1
    80001854:	970080e7          	jalr	-1680(ra) # 800021c0 <_ZN9Scheduler3putEP3CCB>
    80001858:	fc1ff06f          	j	80001818 <_ZN3CCB8dispatchEv+0x24>

000000008000185c <_ZN3CCB5yieldEv>:
{
    8000185c:	ff010113          	addi	sp,sp,-16
    80001860:	00113423          	sd	ra,8(sp)
    80001864:	00813023          	sd	s0,0(sp)
    80001868:	01010413          	addi	s0,sp,16
    CCB::dispatch();
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	f88080e7          	jalr	-120(ra) # 800017f4 <_ZN3CCB8dispatchEv>
}
    80001874:	00813083          	ld	ra,8(sp)
    80001878:	00013403          	ld	s0,0(sp)
    8000187c:	01010113          	addi	sp,sp,16
    80001880:	00008067          	ret

0000000080001884 <_ZN6Thread10threadBaseEPv>:
int Thread::start() {
    //Scheduler::put(myHandle);
    return 0;
}

void Thread::threadBase(void* arg){
    80001884:	ff010113          	addi	sp,sp,-16
    80001888:	00113423          	sd	ra,8(sp)
    8000188c:	00813023          	sd	s0,0(sp)
    80001890:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)arg;
    thr->run();
    80001894:	00053783          	ld	a5,0(a0)
    80001898:	0107b783          	ld	a5,16(a5)
    8000189c:	000780e7          	jalr	a5
}
    800018a0:	00813083          	ld	ra,8(sp)
    800018a4:	00013403          	ld	s0,0(sp)
    800018a8:	01010113          	addi	sp,sp,16
    800018ac:	00008067          	ret

00000000800018b0 <_ZN6ThreadD1Ev>:
Thread::~Thread() { delete myHandle; }
    800018b0:	fe010113          	addi	sp,sp,-32
    800018b4:	00113c23          	sd	ra,24(sp)
    800018b8:	00813823          	sd	s0,16(sp)
    800018bc:	00913423          	sd	s1,8(sp)
    800018c0:	02010413          	addi	s0,sp,32
    800018c4:	00009797          	auipc	a5,0x9
    800018c8:	90478793          	addi	a5,a5,-1788 # 8000a1c8 <_ZTV6Thread+0x10>
    800018cc:	00f53023          	sd	a5,0(a0)
    800018d0:	01853483          	ld	s1,24(a0)
    800018d4:	02048063          	beqz	s1,800018f4 <_ZN6ThreadD1Ev+0x44>
#include "../h/syscall_c.h"

// Coroutine Control Block
class CCB{
public:
    ~CCB() { delete[] stack; }
    800018d8:	0104b503          	ld	a0,16(s1)
    800018dc:	00050663          	beqz	a0,800018e8 <_ZN6ThreadD1Ev+0x38>
    800018e0:	00000097          	auipc	ra,0x0
    800018e4:	cb8080e7          	jalr	-840(ra) # 80001598 <_ZdaPv>
    800018e8:	00048513          	mv	a0,s1
    800018ec:	00000097          	auipc	ra,0x0
    800018f0:	c84080e7          	jalr	-892(ra) # 80001570 <_ZdlPv>
    800018f4:	01813083          	ld	ra,24(sp)
    800018f8:	01013403          	ld	s0,16(sp)
    800018fc:	00813483          	ld	s1,8(sp)
    80001900:	02010113          	addi	sp,sp,32
    80001904:	00008067          	ret

0000000080001908 <_ZN6ThreadD0Ev>:
    80001908:	fe010113          	addi	sp,sp,-32
    8000190c:	00113c23          	sd	ra,24(sp)
    80001910:	00813823          	sd	s0,16(sp)
    80001914:	00913423          	sd	s1,8(sp)
    80001918:	02010413          	addi	s0,sp,32
    8000191c:	00050493          	mv	s1,a0
    80001920:	00000097          	auipc	ra,0x0
    80001924:	f90080e7          	jalr	-112(ra) # 800018b0 <_ZN6ThreadD1Ev>
    80001928:	00048513          	mv	a0,s1
    8000192c:	00000097          	auipc	ra,0x0
    80001930:	c44080e7          	jalr	-956(ra) # 80001570 <_ZdlPv>
    80001934:	01813083          	ld	ra,24(sp)
    80001938:	01013403          	ld	s0,16(sp)
    8000193c:	00813483          	ld	s1,8(sp)
    80001940:	02010113          	addi	sp,sp,32
    80001944:	00008067          	ret

0000000080001948 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001948:	ff010113          	addi	sp,sp,-16
    8000194c:	00113423          	sd	ra,8(sp)
    80001950:	00813023          	sd	s0,0(sp)
    80001954:	01010413          	addi	s0,sp,16
    80001958:	00009797          	auipc	a5,0x9
    8000195c:	89878793          	addi	a5,a5,-1896 # 8000a1f0 <_ZTV9Semaphore+0x10>
    80001960:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001964:	00853503          	ld	a0,8(a0)
    80001968:	00000097          	auipc	ra,0x0
    8000196c:	a28080e7          	jalr	-1496(ra) # 80001390 <_Z9sem_closeP3Sem>
}
    80001970:	00813083          	ld	ra,8(sp)
    80001974:	00013403          	ld	s0,0(sp)
    80001978:	01010113          	addi	sp,sp,16
    8000197c:	00008067          	ret

0000000080001980 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00113c23          	sd	ra,24(sp)
    80001988:	00813823          	sd	s0,16(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	02010413          	addi	s0,sp,32
    80001994:	00050493          	mv	s1,a0
}
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	fb0080e7          	jalr	-80(ra) # 80001948 <_ZN9SemaphoreD1Ev>
    800019a0:	00048513          	mv	a0,s1
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	bcc080e7          	jalr	-1076(ra) # 80001570 <_ZdlPv>
    800019ac:	01813083          	ld	ra,24(sp)
    800019b0:	01013403          	ld	s0,16(sp)
    800019b4:	00813483          	ld	s1,8(sp)
    800019b8:	02010113          	addi	sp,sp,32
    800019bc:	00008067          	ret

00000000800019c0 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) : body(body), arg(arg){
    800019c0:	ff010113          	addi	sp,sp,-16
    800019c4:	00113423          	sd	ra,8(sp)
    800019c8:	00813023          	sd	s0,0(sp)
    800019cc:	01010413          	addi	s0,sp,16
    800019d0:	00050793          	mv	a5,a0
    800019d4:	00058513          	mv	a0,a1
    800019d8:	00060593          	mv	a1,a2
    800019dc:	00008717          	auipc	a4,0x8
    800019e0:	7ec70713          	addi	a4,a4,2028 # 8000a1c8 <_ZTV6Thread+0x10>
    800019e4:	00e7b023          	sd	a4,0(a5)
    800019e8:	00a7b423          	sd	a0,8(a5)
    800019ec:	00c7b823          	sd	a2,16(a5)
    CCB::createCoroutine(body, arg, &myHandle);
    800019f0:	01878613          	addi	a2,a5,24
    800019f4:	00000097          	auipc	ra,0x0
    800019f8:	d18080e7          	jalr	-744(ra) # 8000170c <_ZN3CCB15createCoroutineEPFvPvES0_PPS_>
}
    800019fc:	00813083          	ld	ra,8(sp)
    80001a00:	00013403          	ld	s0,0(sp)
    80001a04:	01010113          	addi	sp,sp,16
    80001a08:	00008067          	ret

0000000080001a0c <_ZN6Thread5startEv>:
int Thread::start() {
    80001a0c:	ff010113          	addi	sp,sp,-16
    80001a10:	00813423          	sd	s0,8(sp)
    80001a14:	01010413          	addi	s0,sp,16
}
    80001a18:	00000513          	li	a0,0
    80001a1c:	00813403          	ld	s0,8(sp)
    80001a20:	01010113          	addi	sp,sp,16
    80001a24:	00008067          	ret

0000000080001a28 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001a28:	ff010113          	addi	sp,sp,-16
    80001a2c:	00113423          	sd	ra,8(sp)
    80001a30:	00813023          	sd	s0,0(sp)
    80001a34:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001a38:	00000097          	auipc	ra,0x0
    80001a3c:	8f4080e7          	jalr	-1804(ra) # 8000132c <_Z15thread_dispatchv>
}
    80001a40:	00813083          	ld	ra,8(sp)
    80001a44:	00013403          	ld	s0,0(sp)
    80001a48:	01010113          	addi	sp,sp,16
    80001a4c:	00008067          	ret

0000000080001a50 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001a50:	ff010113          	addi	sp,sp,-16
    80001a54:	00813423          	sd	s0,8(sp)
    80001a58:	01010413          	addi	s0,sp,16
}
    80001a5c:	00000513          	li	a0,0
    80001a60:	00813403          	ld	s0,8(sp)
    80001a64:	01010113          	addi	sp,sp,16
    80001a68:	00008067          	ret

0000000080001a6c <_ZN6ThreadC1Ev>:
Thread::Thread() : body(threadBase), arg(this){
    80001a6c:	ff010113          	addi	sp,sp,-16
    80001a70:	00113423          	sd	ra,8(sp)
    80001a74:	00813023          	sd	s0,0(sp)
    80001a78:	01010413          	addi	s0,sp,16
    80001a7c:	00050593          	mv	a1,a0
    80001a80:	00008797          	auipc	a5,0x8
    80001a84:	74878793          	addi	a5,a5,1864 # 8000a1c8 <_ZTV6Thread+0x10>
    80001a88:	00f53023          	sd	a5,0(a0)
    80001a8c:	00000517          	auipc	a0,0x0
    80001a90:	df850513          	addi	a0,a0,-520 # 80001884 <_ZN6Thread10threadBaseEPv>
    80001a94:	00a5b423          	sd	a0,8(a1)
    80001a98:	00b5b823          	sd	a1,16(a1)
    CCB::createCoroutine(body, arg, &myHandle);
    80001a9c:	01858613          	addi	a2,a1,24
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	c6c080e7          	jalr	-916(ra) # 8000170c <_ZN3CCB15createCoroutineEPFvPvES0_PPS_>
}
    80001aa8:	00813083          	ld	ra,8(sp)
    80001aac:	00013403          	ld	s0,0(sp)
    80001ab0:	01010113          	addi	sp,sp,16
    80001ab4:	00008067          	ret

0000000080001ab8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned init) {
    80001ab8:	ff010113          	addi	sp,sp,-16
    80001abc:	00113423          	sd	ra,8(sp)
    80001ac0:	00813023          	sd	s0,0(sp)
    80001ac4:	01010413          	addi	s0,sp,16
    80001ac8:	00008797          	auipc	a5,0x8
    80001acc:	72878793          	addi	a5,a5,1832 # 8000a1f0 <_ZTV9Semaphore+0x10>
    80001ad0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001ad4:	00850513          	addi	a0,a0,8
    80001ad8:	00000097          	auipc	ra,0x0
    80001adc:	884080e7          	jalr	-1916(ra) # 8000135c <_Z8sem_openPP3Semj>
}
    80001ae0:	00813083          	ld	ra,8(sp)
    80001ae4:	00013403          	ld	s0,0(sp)
    80001ae8:	01010113          	addi	sp,sp,16
    80001aec:	00008067          	ret

0000000080001af0 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001af0:	ff010113          	addi	sp,sp,-16
    80001af4:	00113423          	sd	ra,8(sp)
    80001af8:	00813023          	sd	s0,0(sp)
    80001afc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001b00:	00853503          	ld	a0,8(a0)
    80001b04:	00000097          	auipc	ra,0x0
    80001b08:	8bc080e7          	jalr	-1860(ra) # 800013c0 <_Z8sem_waitP3Sem>
}
    80001b0c:	00813083          	ld	ra,8(sp)
    80001b10:	00013403          	ld	s0,0(sp)
    80001b14:	01010113          	addi	sp,sp,16
    80001b18:	00008067          	ret

0000000080001b1c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001b1c:	ff010113          	addi	sp,sp,-16
    80001b20:	00113423          	sd	ra,8(sp)
    80001b24:	00813023          	sd	s0,0(sp)
    80001b28:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001b2c:	00853503          	ld	a0,8(a0)
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	8c0080e7          	jalr	-1856(ra) # 800013f0 <_Z10sem_signalP3Sem>
}
    80001b38:	00813083          	ld	ra,8(sp)
    80001b3c:	00013403          	ld	s0,0(sp)
    80001b40:	01010113          	addi	sp,sp,16
    80001b44:	00008067          	ret

0000000080001b48 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80001b48:	ff010113          	addi	sp,sp,-16
    80001b4c:	00113423          	sd	ra,8(sp)
    80001b50:	00813023          	sd	s0,0(sp)
    80001b54:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001b58:	00853503          	ld	a0,8(a0)
    80001b5c:	00000097          	auipc	ra,0x0
    80001b60:	8c4080e7          	jalr	-1852(ra) # 80001420 <_Z11sem_trywaitP3Sem>
}
    80001b64:	00813083          	ld	ra,8(sp)
    80001b68:	00013403          	ld	s0,0(sp)
    80001b6c:	01010113          	addi	sp,sp,16
    80001b70:	00008067          	ret

0000000080001b74 <_ZN7Console4getcEv>:



char Console::getc() {
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00113423          	sd	ra,8(sp)
    80001b7c:	00813023          	sd	s0,0(sp)
    80001b80:	01010413          	addi	s0,sp,16
    return ::getc();
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	90c080e7          	jalr	-1780(ra) # 80001490 <_Z4getcv>
}
    80001b8c:	00813083          	ld	ra,8(sp)
    80001b90:	00013403          	ld	s0,0(sp)
    80001b94:	01010113          	addi	sp,sp,16
    80001b98:	00008067          	ret

0000000080001b9c <_ZN7Console4putcEc>:

void Console::putc(char ch) {
    80001b9c:	ff010113          	addi	sp,sp,-16
    80001ba0:	00113423          	sd	ra,8(sp)
    80001ba4:	00813023          	sd	s0,0(sp)
    80001ba8:	01010413          	addi	s0,sp,16
    ::putc(ch);
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	918080e7          	jalr	-1768(ra) # 800014c4 <_Z4putcc>
    80001bb4:	00813083          	ld	ra,8(sp)
    80001bb8:	00013403          	ld	s0,0(sp)
    80001bbc:	01010113          	addi	sp,sp,16
    80001bc0:	00008067          	ret

0000000080001bc4 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80001bc4:	ff010113          	addi	sp,sp,-16
    80001bc8:	00813423          	sd	s0,8(sp)
    80001bcc:	01010413          	addi	s0,sp,16
    80001bd0:	00813403          	ld	s0,8(sp)
    80001bd4:	01010113          	addi	sp,sp,16
    80001bd8:	00008067          	ret

0000000080001bdc <_ZN5Riscv10popSppSpieEv>:
#include "../lib/console.h"
#include "../h/memAlloc.h"
#include "../h/sem.h"

void Riscv::popSppSpie()
{
    80001bdc:	ff010113          	addi	sp,sp,-16
    80001be0:	00813423          	sd	s0,8(sp)
    80001be4:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    80001be8:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    80001bec:	10200073          	sret
}
    80001bf0:	00813403          	ld	s0,8(sp)
    80001bf4:	01010113          	addi	sp,sp,16
    80001bf8:	00008067          	ret

0000000080001bfc <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001bfc:	fb010113          	addi	sp,sp,-80
    80001c00:	04113423          	sd	ra,72(sp)
    80001c04:	04813023          	sd	s0,64(sp)
    80001c08:	02913c23          	sd	s1,56(sp)
    80001c0c:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001c10:	142027f3          	csrr	a5,scause
    80001c14:	fcf43023          	sd	a5,-64(s0)
    return scause;
    80001c18:	fc043703          	ld	a4,-64(s0)
    uint64 scause = r_scause();

    uint64 volatile code;
    __asm__ volatile("ld %0, 80(s0)" : "=r" (code));
    80001c1c:	05043783          	ld	a5,80(s0)
    80001c20:	fcf43c23          	sd	a5,-40(s0)

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001c24:	ff870693          	addi	a3,a4,-8
    80001c28:	00100793          	li	a5,1
    80001c2c:	02d7f863          	bgeu	a5,a3,80001c5c <_ZN5Riscv20handleSupervisorTrapEv+0x60>
            }
        }
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001c30:	fff00793          	li	a5,-1
    80001c34:	03f79793          	slli	a5,a5,0x3f
    80001c38:	00178793          	addi	a5,a5,1
    80001c3c:	24f70463          	beq	a4,a5,80001e84 <_ZN5Riscv20handleSupervisorTrapEv+0x288>
    {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    80001c40:	fff00793          	li	a5,-1
    80001c44:	03f79793          	slli	a5,a5,0x3f
    80001c48:	00978793          	addi	a5,a5,9
    80001c4c:	08f71463          	bne	a4,a5,80001cd4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    80001c50:	00006097          	auipc	ra,0x6
    80001c54:	040080e7          	jalr	64(ra) # 80007c90 <console_handler>
    80001c58:	07c0006f          	j	80001cd4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001c5c:	141027f3          	csrr	a5,sepc
    80001c60:	fcf43823          	sd	a5,-48(s0)
    return sepc;
    80001c64:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sepc = r_sepc()	+ 4;
    80001c68:	00478793          	addi	a5,a5,4
    80001c6c:	faf43823          	sd	a5,-80(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001c70:	100027f3          	csrr	a5,sstatus
    80001c74:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    80001c78:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sstatus = r_sstatus();
    80001c7c:	faf43c23          	sd	a5,-72(s0)
        switch(code){
    80001c80:	fd843783          	ld	a5,-40(s0)
    80001c84:	05100713          	li	a4,81
    80001c88:	02f76e63          	bltu	a4,a5,80001cc4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
    80001c8c:	00279793          	slli	a5,a5,0x2
    80001c90:	00006717          	auipc	a4,0x6
    80001c94:	39070713          	addi	a4,a4,912 # 80008020 <CONSOLE_STATUS+0x10>
    80001c98:	00e787b3          	add	a5,a5,a4
    80001c9c:	0007a783          	lw	a5,0(a5)
    80001ca0:	00e787b3          	add	a5,a5,a4
    80001ca4:	00078067          	jr	a5
                __asm__ volatile ( "mv %0, a1" : "=r"( block ) );
    80001ca8:	00058493          	mv	s1,a1
                void *ptr = MemAlloc::getInstance()->mem_alloc(size);
    80001cac:	00000097          	auipc	ra,0x0
    80001cb0:	5b4080e7          	jalr	1460(ra) # 80002260 <_ZN8MemAlloc11getInstanceEv>
    80001cb4:	00048593          	mv	a1,s1
    80001cb8:	00000097          	auipc	ra,0x0
    80001cbc:	5c8080e7          	jalr	1480(ra) # 80002280 <_ZN8MemAlloc9mem_allocEm>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ptr));
    80001cc0:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80001cc4:	fb843783          	ld	a5,-72(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001cc8:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001ccc:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001cd0:	14179073          	csrw	sepc,a5
    }
    else
    {
        // unexpected trap cause
    }
    80001cd4:	04813083          	ld	ra,72(sp)
    80001cd8:	04013403          	ld	s0,64(sp)
    80001cdc:	03813483          	ld	s1,56(sp)
    80001ce0:	05010113          	addi	sp,sp,80
    80001ce4:	00008067          	ret
                __asm__ volatile ( "mv %0, a1" : "=r"( addr ) );
    80001ce8:	00058493          	mv	s1,a1
                int x = MemAlloc::getInstance()->mem_free(addr);
    80001cec:	00000097          	auipc	ra,0x0
    80001cf0:	574080e7          	jalr	1396(ra) # 80002260 <_ZN8MemAlloc11getInstanceEv>
    80001cf4:	00048593          	mv	a1,s1
    80001cf8:	00000097          	auipc	ra,0x0
    80001cfc:	6b0080e7          	jalr	1712(ra) # 800023a8 <_ZN8MemAlloc8mem_freeEPv>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (x));
    80001d00:	04a43823          	sd	a0,80(s0)
                break;
    80001d04:	fc1ff06f          	j	80001cc4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                __asm__ volatile ( "mv %0, a1" : "=r"( handle ) );
    80001d08:	00058493          	mv	s1,a1
                __asm__ volatile ( "mv %0, a2" : "=r"( startRoutine ) );
    80001d0c:	00060513          	mv	a0,a2
                __asm__ volatile ( "mv %0, t0" : "=r"( arg ) );
    80001d10:	00028593          	mv	a1,t0
                CCB::createCoroutine((CCB::Body)startRoutine, (void*)arg, (thread_t*)handle);
    80001d14:	00048613          	mv	a2,s1
    80001d18:	00000097          	auipc	ra,0x0
    80001d1c:	9f4080e7          	jalr	-1548(ra) # 8000170c <_ZN3CCB15createCoroutineEPFvPvES0_PPS_>
                if((thread_t*)handle){
    80001d20:	00048863          	beqz	s1,80001d30 <_ZN5Riscv20handleSupervisorTrapEv+0x134>
                    ret = 0;
    80001d24:	00000793          	li	a5,0
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80001d28:	04f43823          	sd	a5,80(s0)
                break;
    80001d2c:	f99ff06f          	j	80001cc4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                    ret = -1;
    80001d30:	fff00793          	li	a5,-1
    80001d34:	ff5ff06f          	j	80001d28 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
                if (CCB::running == 0) ret = -1;
    80001d38:	00008797          	auipc	a5,0x8
    80001d3c:	6907b783          	ld	a5,1680(a5) # 8000a3c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d40:	0007b783          	ld	a5,0(a5)
    80001d44:	02078c63          	beqz	a5,80001d7c <_ZN5Riscv20handleSupervisorTrapEv+0x180>
    void setFinished(bool value) { finished = value; }
    80001d48:	00100713          	li	a4,1
    80001d4c:	02e78423          	sb	a4,40(a5)
                    CCB::dispatch();
    80001d50:	00000097          	auipc	ra,0x0
    80001d54:	aa4080e7          	jalr	-1372(ra) # 800017f4 <_ZN3CCB8dispatchEv>
                    ret=0;
    80001d58:	00000793          	li	a5,0
                if(!(CCB::running->isFinished())) ret=-1;
    80001d5c:	00008717          	auipc	a4,0x8
    80001d60:	66c73703          	ld	a4,1644(a4) # 8000a3c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001d64:	00073703          	ld	a4,0(a4)
    bool isFinished() const { return finished; }
    80001d68:	02874703          	lbu	a4,40(a4)
    80001d6c:	00071463          	bnez	a4,80001d74 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    80001d70:	fff00793          	li	a5,-1
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80001d74:	04f43823          	sd	a5,80(s0)
                break;
    80001d78:	f4dff06f          	j	80001cc4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                if (CCB::running == 0) ret = -1;
    80001d7c:	fff00793          	li	a5,-1
    80001d80:	fddff06f          	j	80001d5c <_ZN5Riscv20handleSupervisorTrapEv+0x160>
                CCB::dispatch();
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	a70080e7          	jalr	-1424(ra) # 800017f4 <_ZN3CCB8dispatchEv>
                break;
    80001d8c:	f39ff06f          	j	80001cc4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                __asm__ volatile ("mv %0, a1" : "=r"(handle));
    80001d90:	00058493          	mv	s1,a1
                __asm__ volatile ("mv %0, a2" : "=r"(init));
    80001d94:	00060593          	mv	a1,a2
                Sem::createSem((sem_t*)handle,init);
    80001d98:	00048513          	mv	a0,s1
    80001d9c:	00000097          	auipc	ra,0x0
    80001da0:	280080e7          	jalr	640(ra) # 8000201c <_ZN3Sem9createSemEPPS_m>
                if ((sem_t*)handle) {
    80001da4:	00048863          	beqz	s1,80001db4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                    ret = 0;
    80001da8:	00000793          	li	a5,0
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80001dac:	04f43823          	sd	a5,80(s0)
                break;
    80001db0:	f15ff06f          	j	80001cc4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                    ret = -1;
    80001db4:	fff00793          	li	a5,-1
    80001db8:	ff5ff06f          	j	80001dac <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
                __asm__ volatile ("mv %0, a1" : "=r"(handle));
    80001dbc:	00058513          	mv	a0,a1
                if(handle == 0) ret= -1;
    80001dc0:	00050c63          	beqz	a0,80001dd8 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
                    handle->~Sem();
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	2b4080e7          	jalr	692(ra) # 80002078 <_ZN3SemD1Ev>
                    ret=0;
    80001dcc:	00000793          	li	a5,0
                __asm__ volatile("sd %0, 80(fp)" : : "r" ((uint64)ret));
    80001dd0:	04f43823          	sd	a5,80(s0)
                break;
    80001dd4:	ef1ff06f          	j	80001cc4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                if(handle == 0) ret= -1;
    80001dd8:	fff00793          	li	a5,-1
    80001ddc:	ff5ff06f          	j	80001dd0 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                __asm__ volatile ("mv %0, a1" : "=r"(handle));
    80001de0:	00058513          	mv	a0,a1
                if(handle == 0) ret= -1;
    80001de4:	00050a63          	beqz	a0,80001df8 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
                    ret=handle->wait();
    80001de8:	00000097          	auipc	ra,0x0
    80001dec:	13c080e7          	jalr	316(ra) # 80001f24 <_ZN3Sem4waitEv>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80001df0:	04a43823          	sd	a0,80(s0)
                break;
    80001df4:	ed1ff06f          	j	80001cc4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                if(handle == 0) ret= -1;
    80001df8:	fff00513          	li	a0,-1
    80001dfc:	ff5ff06f          	j	80001df0 <_ZN5Riscv20handleSupervisorTrapEv+0x1f4>
                __asm__ volatile ("mv %0, a1" : "=r"(handle));
    80001e00:	00058513          	mv	a0,a1
                if(handle == 0) ret= -1;
    80001e04:	00050a63          	beqz	a0,80001e18 <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
                    ret = handle->signal();
    80001e08:	00000097          	auipc	ra,0x0
    80001e0c:	1cc080e7          	jalr	460(ra) # 80001fd4 <_ZN3Sem6signalEv>
                __asm__ volatile("sd %0, 80(fp)" : : "r" (ret));
    80001e10:	04a43823          	sd	a0,80(s0)
                break;
    80001e14:	eb1ff06f          	j	80001cc4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                if(handle == 0) ret= -1;
    80001e18:	fff00513          	li	a0,-1
    80001e1c:	ff5ff06f          	j	80001e10 <_ZN5Riscv20handleSupervisorTrapEv+0x214>
                __asm__ volatile ("mv %0, a1" : "=r"(id));
    80001e20:	00058793          	mv	a5,a1
                if(id == 0) ret= -1;
    80001e24:	00078863          	beqz	a5,80001e34 <_ZN5Riscv20handleSupervisorTrapEv+0x238>
                    ret = id->value;
    80001e28:	0107a783          	lw	a5,16(a5)
                __asm__ volatile("sd %0, 80(s0)" : : "r" (ret));
    80001e2c:	04f43823          	sd	a5,80(s0)
                break;
    80001e30:	e95ff06f          	j	80001cc4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                if(id == 0) ret= -1;
    80001e34:	fff00793          	li	a5,-1
    80001e38:	ff5ff06f          	j	80001e2c <_ZN5Riscv20handleSupervisorTrapEv+0x230>
                char ret= __getc();
    80001e3c:	00006097          	auipc	ra,0x6
    80001e40:	e1c080e7          	jalr	-484(ra) # 80007c58 <__getc>
                __asm__ volatile("sd %0, 80(s0)" : : "r" (ret));
    80001e44:	04a43823          	sd	a0,80(s0)
                break;
    80001e48:	e7dff06f          	j	80001cc4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                __asm__ volatile ("mv %0, a1" : "=r"(c));
    80001e4c:	00058513          	mv	a0,a1
                __putc(c);
    80001e50:	0ff57513          	andi	a0,a0,255
    80001e54:	00006097          	auipc	ra,0x6
    80001e58:	dc8080e7          	jalr	-568(ra) # 80007c1c <__putc>
                break;
    80001e5c:	e69ff06f          	j	80001cc4 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
                w_sstatus(sstatus);
    80001e60:	fb843783          	ld	a5,-72(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001e64:	10079073          	csrw	sstatus,a5
                w_sepc(sepc);
    80001e68:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e6c:	14179073          	csrw	sepc,a5
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001e70:	00200793          	li	a5,2
    80001e74:	1447b073          	csrc	sip,a5
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001e78:	10000793          	li	a5,256
    80001e7c:	1007b073          	csrc	sstatus,a5
                return;
    80001e80:	e55ff06f          	j	80001cd4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001e84:	00200793          	li	a5,2
    80001e88:	1447b073          	csrc	sip,a5
}
    80001e8c:	e49ff06f          	j	80001cd4 <_ZN5Riscv20handleSupervisorTrapEv+0xd8>

0000000080001e90 <_ZN3Sem5blockEv>:
    if(++value <= 0) unblock();
    return 0;

}

void Sem::block() {
    80001e90:	fe010113          	addi	sp,sp,-32
    80001e94:	00113c23          	sd	ra,24(sp)
    80001e98:	00813823          	sd	s0,16(sp)
    80001e9c:	00913423          	sd	s1,8(sp)
    80001ea0:	01213023          	sd	s2,0(sp)
    80001ea4:	02010413          	addi	s0,sp,32
    80001ea8:	00050493          	mv	s1,a0
    CCB *currentThread = CCB::running;
    80001eac:	00008797          	auipc	a5,0x8
    80001eb0:	51c7b783          	ld	a5,1308(a5) # 8000a3c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001eb4:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001eb8:	01000513          	li	a0,16
    80001ebc:	fffff097          	auipc	ra,0xfffff
    80001ec0:	664080e7          	jalr	1636(ra) # 80001520 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001ec4:	01253023          	sd	s2,0(a0)
    80001ec8:	00053423          	sd	zero,8(a0)
        if (tail)
    80001ecc:	0084b783          	ld	a5,8(s1)
    80001ed0:	04078463          	beqz	a5,80001f18 <_ZN3Sem5blockEv+0x88>
        {
            tail->next = elem;
    80001ed4:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001ed8:	00a4b423          	sd	a0,8(s1)
    blocked.addLast(currentThread);
    CCB::running = Scheduler::get();
    80001edc:	00000097          	auipc	ra,0x0
    80001ee0:	27c080e7          	jalr	636(ra) # 80002158 <_ZN9Scheduler3getEv>
    80001ee4:	00008797          	auipc	a5,0x8
    80001ee8:	4e47b783          	ld	a5,1252(a5) # 8000a3c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80001eec:	00a7b023          	sd	a0,0(a5)
    CCB::contextSwitch(&currentThread->context, &CCB::running->context);
    80001ef0:	01850593          	addi	a1,a0,24
    80001ef4:	01890513          	addi	a0,s2,24
    80001ef8:	fffff097          	auipc	ra,0xfffff
    80001efc:	318080e7          	jalr	792(ra) # 80001210 <_ZN3CCB13contextSwitchEPNS_7ContextES1_>
}
    80001f00:	01813083          	ld	ra,24(sp)
    80001f04:	01013403          	ld	s0,16(sp)
    80001f08:	00813483          	ld	s1,8(sp)
    80001f0c:	00013903          	ld	s2,0(sp)
    80001f10:	02010113          	addi	sp,sp,32
    80001f14:	00008067          	ret
        } else
        {
            head = tail = elem;
    80001f18:	00a4b423          	sd	a0,8(s1)
    80001f1c:	00a4b023          	sd	a0,0(s1)
    80001f20:	fbdff06f          	j	80001edc <_ZN3Sem5blockEv+0x4c>

0000000080001f24 <_ZN3Sem4waitEv>:
    if(--value < 0) block();
    80001f24:	01052783          	lw	a5,16(a0)
    80001f28:	fff7879b          	addiw	a5,a5,-1
    80001f2c:	00f52823          	sw	a5,16(a0)
    80001f30:	02079713          	slli	a4,a5,0x20
    80001f34:	00074663          	bltz	a4,80001f40 <_ZN3Sem4waitEv+0x1c>
}
    80001f38:	00000513          	li	a0,0
    80001f3c:	00008067          	ret
int Sem::wait() {
    80001f40:	ff010113          	addi	sp,sp,-16
    80001f44:	00113423          	sd	ra,8(sp)
    80001f48:	00813023          	sd	s0,0(sp)
    80001f4c:	01010413          	addi	s0,sp,16
    if(--value < 0) block();
    80001f50:	00000097          	auipc	ra,0x0
    80001f54:	f40080e7          	jalr	-192(ra) # 80001e90 <_ZN3Sem5blockEv>
}
    80001f58:	00000513          	li	a0,0
    80001f5c:	00813083          	ld	ra,8(sp)
    80001f60:	00013403          	ld	s0,0(sp)
    80001f64:	01010113          	addi	sp,sp,16
    80001f68:	00008067          	ret

0000000080001f6c <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    80001f6c:	fe010113          	addi	sp,sp,-32
    80001f70:	00113c23          	sd	ra,24(sp)
    80001f74:	00813823          	sd	s0,16(sp)
    80001f78:	00913423          	sd	s1,8(sp)
    80001f7c:	02010413          	addi	s0,sp,32
    80001f80:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001f84:	00053503          	ld	a0,0(a0)
    80001f88:	04050263          	beqz	a0,80001fcc <_ZN3Sem7unblockEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001f8c:	00853703          	ld	a4,8(a0)
    80001f90:	00e7b023          	sd	a4,0(a5)
        if (!head) { tail = 0; }
    80001f94:	02070863          	beqz	a4,80001fc4 <_ZN3Sem7unblockEv+0x58>

        T *ret = elem->data;
    80001f98:	00053483          	ld	s1,0(a0)
        delete elem;
    80001f9c:	fffff097          	auipc	ra,0xfffff
    80001fa0:	5d4080e7          	jalr	1492(ra) # 80001570 <_ZdlPv>
    CCB* fisrtBlocked = blocked.removeFirst();
    Scheduler::put(fisrtBlocked);
    80001fa4:	00048513          	mv	a0,s1
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	218080e7          	jalr	536(ra) # 800021c0 <_ZN9Scheduler3putEP3CCB>
}
    80001fb0:	01813083          	ld	ra,24(sp)
    80001fb4:	01013403          	ld	s0,16(sp)
    80001fb8:	00813483          	ld	s1,8(sp)
    80001fbc:	02010113          	addi	sp,sp,32
    80001fc0:	00008067          	ret
        if (!head) { tail = 0; }
    80001fc4:	0007b423          	sd	zero,8(a5)
    80001fc8:	fd1ff06f          	j	80001f98 <_ZN3Sem7unblockEv+0x2c>
        if (!head) { return 0; }
    80001fcc:	00050493          	mv	s1,a0
    80001fd0:	fd5ff06f          	j	80001fa4 <_ZN3Sem7unblockEv+0x38>

0000000080001fd4 <_ZN3Sem6signalEv>:
    if(++value <= 0) unblock();
    80001fd4:	01052783          	lw	a5,16(a0)
    80001fd8:	0017879b          	addiw	a5,a5,1
    80001fdc:	0007871b          	sext.w	a4,a5
    80001fe0:	00f52823          	sw	a5,16(a0)
    80001fe4:	00e05663          	blez	a4,80001ff0 <_ZN3Sem6signalEv+0x1c>
}
    80001fe8:	00000513          	li	a0,0
    80001fec:	00008067          	ret
int Sem::signal() {
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00113423          	sd	ra,8(sp)
    80001ff8:	00813023          	sd	s0,0(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    if(++value <= 0) unblock();
    80002000:	00000097          	auipc	ra,0x0
    80002004:	f6c080e7          	jalr	-148(ra) # 80001f6c <_ZN3Sem7unblockEv>
}
    80002008:	00000513          	li	a0,0
    8000200c:	00813083          	ld	ra,8(sp)
    80002010:	00013403          	ld	s0,0(sp)
    80002014:	01010113          	addi	sp,sp,16
    80002018:	00008067          	ret

000000008000201c <_ZN3Sem9createSemEPPS_m>:
void Sem::createSem(sem_t* handle, uint64 val) {
    8000201c:	fe010113          	addi	sp,sp,-32
    80002020:	00113c23          	sd	ra,24(sp)
    80002024:	00813823          	sd	s0,16(sp)
    80002028:	00913423          	sd	s1,8(sp)
    8000202c:	01213023          	sd	s2,0(sp)
    80002030:	02010413          	addi	s0,sp,32
    80002034:	00050913          	mv	s2,a0
    80002038:	00058493          	mv	s1,a1
    *handle = new Sem(val);
    8000203c:	01800513          	li	a0,24
    80002040:	fffff097          	auipc	ra,0xfffff
    80002044:	4e0080e7          	jalr	1248(ra) # 80001520 <_Znwm>
    List() : head(0), tail(0) {}
    80002048:	00053023          	sd	zero,0(a0)
    8000204c:	00053423          	sd	zero,8(a0)
#include "../h/ccb.hpp"
#include "../h/list.hpp"

class Sem {
private:
    Sem (unsigned short init=1) : value(init) {}
    80002050:	03049493          	slli	s1,s1,0x30
    80002054:	0304d493          	srli	s1,s1,0x30
    80002058:	00952823          	sw	s1,16(a0)
    8000205c:	00a93023          	sd	a0,0(s2)
}
    80002060:	01813083          	ld	ra,24(sp)
    80002064:	01013403          	ld	s0,16(sp)
    80002068:	00813483          	ld	s1,8(sp)
    8000206c:	00013903          	ld	s2,0(sp)
    80002070:	02010113          	addi	sp,sp,32
    80002074:	00008067          	ret

0000000080002078 <_ZN3SemD1Ev>:

Sem::~Sem() {
    80002078:	fe010113          	addi	sp,sp,-32
    8000207c:	00113c23          	sd	ra,24(sp)
    80002080:	00813823          	sd	s0,16(sp)
    80002084:	00913423          	sd	s1,8(sp)
    80002088:	01213023          	sd	s2,0(sp)
    8000208c:	02010413          	addi	s0,sp,32
    80002090:	00050913          	mv	s2,a0
        if (!head) { return 0; }
    80002094:	00053503          	ld	a0,0(a0)
    80002098:	02050463          	beqz	a0,800020c0 <_ZN3SemD1Ev+0x48>
        head = head->next;
    8000209c:	00853783          	ld	a5,8(a0)
    800020a0:	00f93023          	sd	a5,0(s2)
        if (!head) { tail = 0; }
    800020a4:	00078a63          	beqz	a5,800020b8 <_ZN3SemD1Ev+0x40>
        T *ret = elem->data;
    800020a8:	00053483          	ld	s1,0(a0)
        delete elem;
    800020ac:	fffff097          	auipc	ra,0xfffff
    800020b0:	4c4080e7          	jalr	1220(ra) # 80001570 <_ZdlPv>
        return ret;
    800020b4:	0240006f          	j	800020d8 <_ZN3SemD1Ev+0x60>
        if (!head) { tail = 0; }
    800020b8:	00093423          	sd	zero,8(s2)
    800020bc:	fedff06f          	j	800020a8 <_ZN3SemD1Ev+0x30>
        if (!head) { return 0; }
    800020c0:	00050493          	mv	s1,a0
    800020c4:	0140006f          	j	800020d8 <_ZN3SemD1Ev+0x60>
        if (!head) { tail = 0; }
    800020c8:	00093423          	sd	zero,8(s2)
        T *ret = elem->data;
    800020cc:	00053483          	ld	s1,0(a0)
        delete elem;
    800020d0:	fffff097          	auipc	ra,0xfffff
    800020d4:	4a0080e7          	jalr	1184(ra) # 80001570 <_ZdlPv>
    for (CCB* blockedThread = blocked.removeFirst(); blockedThread != nullptr; blockedThread = blocked.removeFirst()) {
    800020d8:	02048463          	beqz	s1,80002100 <_ZN3SemD1Ev+0x88>
        Scheduler::put(blockedThread);
    800020dc:	00048513          	mv	a0,s1
    800020e0:	00000097          	auipc	ra,0x0
    800020e4:	0e0080e7          	jalr	224(ra) # 800021c0 <_ZN9Scheduler3putEP3CCB>
        if (!head) { return 0; }
    800020e8:	00093503          	ld	a0,0(s2)
    800020ec:	00050a63          	beqz	a0,80002100 <_ZN3SemD1Ev+0x88>
        head = head->next;
    800020f0:	00853783          	ld	a5,8(a0)
    800020f4:	00f93023          	sd	a5,0(s2)
        if (!head) { tail = 0; }
    800020f8:	fc079ae3          	bnez	a5,800020cc <_ZN3SemD1Ev+0x54>
    800020fc:	fcdff06f          	j	800020c8 <_ZN3SemD1Ev+0x50>
    }
}
    80002100:	01813083          	ld	ra,24(sp)
    80002104:	01013403          	ld	s0,16(sp)
    80002108:	00813483          	ld	s1,8(sp)
    8000210c:	00013903          	ld	s2,0(sp)
    80002110:	02010113          	addi	sp,sp,32
    80002114:	00008067          	ret

0000000080002118 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::put(CCB *ccb)
{
    readyThreadQueue.addLast(ccb);
    80002118:	ff010113          	addi	sp,sp,-16
    8000211c:	00813423          	sd	s0,8(sp)
    80002120:	01010413          	addi	s0,sp,16
    80002124:	00100793          	li	a5,1
    80002128:	00f50863          	beq	a0,a5,80002138 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000212c:	00813403          	ld	s0,8(sp)
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret
    80002138:	000107b7          	lui	a5,0x10
    8000213c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002140:	fef596e3          	bne	a1,a5,8000212c <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002144:	00008797          	auipc	a5,0x8
    80002148:	2e478793          	addi	a5,a5,740 # 8000a428 <_ZN9Scheduler16readyThreadQueueE>
    8000214c:	0007b023          	sd	zero,0(a5)
    80002150:	0007b423          	sd	zero,8(a5)
    80002154:	fd9ff06f          	j	8000212c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002158 <_ZN9Scheduler3getEv>:
{
    80002158:	fe010113          	addi	sp,sp,-32
    8000215c:	00113c23          	sd	ra,24(sp)
    80002160:	00813823          	sd	s0,16(sp)
    80002164:	00913423          	sd	s1,8(sp)
    80002168:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000216c:	00008517          	auipc	a0,0x8
    80002170:	2bc53503          	ld	a0,700(a0) # 8000a428 <_ZN9Scheduler16readyThreadQueueE>
    80002174:	04050263          	beqz	a0,800021b8 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80002178:	00853783          	ld	a5,8(a0)
    8000217c:	00008717          	auipc	a4,0x8
    80002180:	2af73623          	sd	a5,684(a4) # 8000a428 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002184:	02078463          	beqz	a5,800021ac <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80002188:	00053483          	ld	s1,0(a0)
        delete elem;
    8000218c:	fffff097          	auipc	ra,0xfffff
    80002190:	3e4080e7          	jalr	996(ra) # 80001570 <_ZdlPv>
}
    80002194:	00048513          	mv	a0,s1
    80002198:	01813083          	ld	ra,24(sp)
    8000219c:	01013403          	ld	s0,16(sp)
    800021a0:	00813483          	ld	s1,8(sp)
    800021a4:	02010113          	addi	sp,sp,32
    800021a8:	00008067          	ret
        if (!head) { tail = 0; }
    800021ac:	00008797          	auipc	a5,0x8
    800021b0:	2807b223          	sd	zero,644(a5) # 8000a430 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800021b4:	fd5ff06f          	j	80002188 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800021b8:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800021bc:	fd9ff06f          	j	80002194 <_ZN9Scheduler3getEv+0x3c>

00000000800021c0 <_ZN9Scheduler3putEP3CCB>:
{
    800021c0:	fe010113          	addi	sp,sp,-32
    800021c4:	00113c23          	sd	ra,24(sp)
    800021c8:	00813823          	sd	s0,16(sp)
    800021cc:	00913423          	sd	s1,8(sp)
    800021d0:	02010413          	addi	s0,sp,32
    800021d4:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800021d8:	01000513          	li	a0,16
    800021dc:	fffff097          	auipc	ra,0xfffff
    800021e0:	344080e7          	jalr	836(ra) # 80001520 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800021e4:	00953023          	sd	s1,0(a0)
    800021e8:	00053423          	sd	zero,8(a0)
        if (tail)
    800021ec:	00008797          	auipc	a5,0x8
    800021f0:	2447b783          	ld	a5,580(a5) # 8000a430 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800021f4:	02078263          	beqz	a5,80002218 <_ZN9Scheduler3putEP3CCB+0x58>
            tail->next = elem;
    800021f8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800021fc:	00008797          	auipc	a5,0x8
    80002200:	22a7ba23          	sd	a0,564(a5) # 8000a430 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002204:	01813083          	ld	ra,24(sp)
    80002208:	01013403          	ld	s0,16(sp)
    8000220c:	00813483          	ld	s1,8(sp)
    80002210:	02010113          	addi	sp,sp,32
    80002214:	00008067          	ret
            head = tail = elem;
    80002218:	00008797          	auipc	a5,0x8
    8000221c:	21078793          	addi	a5,a5,528 # 8000a428 <_ZN9Scheduler16readyThreadQueueE>
    80002220:	00a7b423          	sd	a0,8(a5)
    80002224:	00a7b023          	sd	a0,0(a5)
    80002228:	fddff06f          	j	80002204 <_ZN9Scheduler3putEP3CCB+0x44>

000000008000222c <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    8000222c:	ff010113          	addi	sp,sp,-16
    80002230:	00113423          	sd	ra,8(sp)
    80002234:	00813023          	sd	s0,0(sp)
    80002238:	01010413          	addi	s0,sp,16
    8000223c:	000105b7          	lui	a1,0x10
    80002240:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002244:	00100513          	li	a0,1
    80002248:	00000097          	auipc	ra,0x0
    8000224c:	ed0080e7          	jalr	-304(ra) # 80002118 <_Z41__static_initialization_and_destruction_0ii>
    80002250:	00813083          	ld	ra,8(sp)
    80002254:	00013403          	ld	s0,0(sp)
    80002258:	01010113          	addi	sp,sp,16
    8000225c:	00008067          	ret

0000000080002260 <_ZN8MemAlloc11getInstanceEv>:
//

#include "../h/memAlloc.h"

//1.zad 3.klk, jun 2022.god
MemAlloc* MemAlloc::getInstance() {
    80002260:	ff010113          	addi	sp,sp,-16
    80002264:	00813423          	sd	s0,8(sp)
    80002268:	01010413          	addi	s0,sp,16
    static MemAlloc instance;
    return &instance;
}
    8000226c:	00008517          	auipc	a0,0x8
    80002270:	1cc50513          	addi	a0,a0,460 # 8000a438 <_ZZN8MemAlloc11getInstanceEvE8instance>
    80002274:	00813403          	ld	s0,8(sp)
    80002278:	01010113          	addi	sp,sp,16
    8000227c:	00008067          	ret

0000000080002280 <_ZN8MemAlloc9mem_allocEm>:

void* MemAlloc::mem_alloc(size_t size) {
    80002280:	ff010113          	addi	sp,sp,-16
    80002284:	00813423          	sd	s0,8(sp)
    80002288:	01010413          	addi	s0,sp,16
    8000228c:	00050693          	mv	a3,a0
    //ako je lista prazna, init prvi slobodni blok
    if(!head){
    80002290:	00053783          	ld	a5,0(a0)
    80002294:	02078263          	beqz	a5,800022b8 <_ZN8MemAlloc9mem_allocEm+0x38>
        firstBlock->size=((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR-sizeof(MemFree))/MEM_BLOCK_SIZE;
        firstBlock->next= nullptr;
        head=firstBlock;
    }

    MemFree* cur=head;
    80002298:	0006b503          	ld	a0,0(a3)
    MemFree* prev= nullptr;
    8000229c:	00000713          	li	a4,0

    while(cur && cur->size<size){
    800022a0:	04050663          	beqz	a0,800022ec <_ZN8MemAlloc9mem_allocEm+0x6c>
    800022a4:	00053783          	ld	a5,0(a0)
    800022a8:	04b7f263          	bgeu	a5,a1,800022ec <_ZN8MemAlloc9mem_allocEm+0x6c>
        prev=cur;
    800022ac:	00050713          	mv	a4,a0
        cur=cur->next;
    800022b0:	00853503          	ld	a0,8(a0)
    while(cur && cur->size<size){
    800022b4:	fedff06f          	j	800022a0 <_ZN8MemAlloc9mem_allocEm+0x20>
        MemFree* firstBlock=(MemFree*)HEAP_START_ADDR;
    800022b8:	00008797          	auipc	a5,0x8
    800022bc:	0f87b783          	ld	a5,248(a5) # 8000a3b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800022c0:	0007b703          	ld	a4,0(a5)
        firstBlock->size=((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR-sizeof(MemFree))/MEM_BLOCK_SIZE;
    800022c4:	00008797          	auipc	a5,0x8
    800022c8:	10c7b783          	ld	a5,268(a5) # 8000a3d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800022cc:	0007b783          	ld	a5,0(a5)
    800022d0:	40e787b3          	sub	a5,a5,a4
    800022d4:	ff078793          	addi	a5,a5,-16
    800022d8:	0067d793          	srli	a5,a5,0x6
    800022dc:	00f73023          	sd	a5,0(a4)
        firstBlock->next= nullptr;
    800022e0:	00073423          	sd	zero,8(a4)
        head=firstBlock;
    800022e4:	00e53023          	sd	a4,0(a0)
    800022e8:	fb1ff06f          	j	80002298 <_ZN8MemAlloc9mem_allocEm+0x18>
    }

    if(!cur) return nullptr;
    800022ec:	04050063          	beqz	a0,8000232c <_ZN8MemAlloc9mem_allocEm+0xac>

    if(cur->size==size){
    800022f0:	00053783          	ld	a5,0(a0)
    800022f4:	04b78263          	beq	a5,a1,80002338 <_ZN8MemAlloc9mem_allocEm+0xb8>
        } else{
            head=nextBlock;
        }
        return (void*)((char*)cur + sizeof(MemFree));
    } else{
        MemFree* block=(MemFree*)((char*)cur + sizeof(MemFree) + size*MEM_BLOCK_SIZE);
    800022f8:	00659613          	slli	a2,a1,0x6
    800022fc:	01060613          	addi	a2,a2,16
    80002300:	00c50633          	add	a2,a0,a2
        block->size=(cur->size - size - sizeof(MemFree))/MEM_BLOCK_SIZE;
    80002304:	40b787b3          	sub	a5,a5,a1
    80002308:	ff078793          	addi	a5,a5,-16
    8000230c:	0067d793          	srli	a5,a5,0x6
    80002310:	00f63023          	sd	a5,0(a2)
        cur->size=size;
    80002314:	00b53023          	sd	a1,0(a0)
        block->next=cur->next;
    80002318:	00853783          	ld	a5,8(a0)
    8000231c:	00f63423          	sd	a5,8(a2)
        if(prev){
    80002320:	02070a63          	beqz	a4,80002354 <_ZN8MemAlloc9mem_allocEm+0xd4>
            prev->next=block;
    80002324:	00c73423          	sd	a2,8(a4)
        } else{
            head=block;
        }
        return (void*)((char*)cur + sizeof(MemFree));
    80002328:	01050513          	addi	a0,a0,16
    }
}
    8000232c:	00813403          	ld	s0,8(sp)
    80002330:	01010113          	addi	sp,sp,16
    80002334:	00008067          	ret
        MemFree* nextBlock=cur->next;
    80002338:	00853783          	ld	a5,8(a0)
        if(prev){
    8000233c:	00070863          	beqz	a4,8000234c <_ZN8MemAlloc9mem_allocEm+0xcc>
            prev->next=nextBlock;
    80002340:	00f73423          	sd	a5,8(a4)
        return (void*)((char*)cur + sizeof(MemFree));
    80002344:	01050513          	addi	a0,a0,16
    80002348:	fe5ff06f          	j	8000232c <_ZN8MemAlloc9mem_allocEm+0xac>
            head=nextBlock;
    8000234c:	00f6b023          	sd	a5,0(a3)
    80002350:	ff5ff06f          	j	80002344 <_ZN8MemAlloc9mem_allocEm+0xc4>
            head=block;
    80002354:	00c6b023          	sd	a2,0(a3)
    80002358:	fd1ff06f          	j	80002328 <_ZN8MemAlloc9mem_allocEm+0xa8>

000000008000235c <_ZN8MemAlloc11try_to_joinEPNS_7MemFreeE>:

    return 0;
}

//2.zad 2.klk, sept 2015
void MemAlloc ::try_to_join(MemAlloc::MemFree *cur) {
    8000235c:	ff010113          	addi	sp,sp,-16
    80002360:	00813423          	sd	s0,8(sp)
    80002364:	01010413          	addi	s0,sp,16
    if(cur->next && (char*)cur + sizeof(MemFree) + cur->size*MEM_BLOCK_SIZE == (char*)cur->next){
    80002368:	0085b703          	ld	a4,8(a1)
    8000236c:	00070c63          	beqz	a4,80002384 <_ZN8MemAlloc11try_to_joinEPNS_7MemFreeE+0x28>
    80002370:	0005b683          	ld	a3,0(a1)
    80002374:	00669793          	slli	a5,a3,0x6
    80002378:	01078793          	addi	a5,a5,16
    8000237c:	00f587b3          	add	a5,a1,a5
    80002380:	00f70863          	beq	a4,a5,80002390 <_ZN8MemAlloc11try_to_joinEPNS_7MemFreeE+0x34>
        cur->size += cur->next->size;
        cur->next = cur->next->next;
    }
    80002384:	00813403          	ld	s0,8(sp)
    80002388:	01010113          	addi	sp,sp,16
    8000238c:	00008067          	ret
        cur->size += cur->next->size;
    80002390:	00073783          	ld	a5,0(a4)
    80002394:	00f686b3          	add	a3,a3,a5
    80002398:	00d5b023          	sd	a3,0(a1)
        cur->next = cur->next->next;
    8000239c:	00873783          	ld	a5,8(a4)
    800023a0:	00f5b423          	sd	a5,8(a1)
    800023a4:	fe1ff06f          	j	80002384 <_ZN8MemAlloc11try_to_joinEPNS_7MemFreeE+0x28>

00000000800023a8 <_ZN8MemAlloc8mem_freeEPv>:
    if (!addr || addr < (char*)HEAP_START_ADDR || addr > (char*)HEAP_END_ADDR)
    800023a8:	0c058663          	beqz	a1,80002474 <_ZN8MemAlloc8mem_freeEPv+0xcc>
int MemAlloc::mem_free(void* addr) {
    800023ac:	fe010113          	addi	sp,sp,-32
    800023b0:	00113c23          	sd	ra,24(sp)
    800023b4:	00813823          	sd	s0,16(sp)
    800023b8:	00913423          	sd	s1,8(sp)
    800023bc:	01213023          	sd	s2,0(sp)
    800023c0:	02010413          	addi	s0,sp,32
    800023c4:	00050493          	mv	s1,a0
    800023c8:	00058793          	mv	a5,a1
    if (!addr || addr < (char*)HEAP_START_ADDR || addr > (char*)HEAP_END_ADDR)
    800023cc:	00008717          	auipc	a4,0x8
    800023d0:	fe473703          	ld	a4,-28(a4) # 8000a3b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    800023d4:	00073703          	ld	a4,0(a4)
    800023d8:	0ae5e263          	bltu	a1,a4,8000247c <_ZN8MemAlloc8mem_freeEPv+0xd4>
    800023dc:	00008717          	auipc	a4,0x8
    800023e0:	ff473703          	ld	a4,-12(a4) # 8000a3d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023e4:	00073703          	ld	a4,0(a4)
    800023e8:	08b76e63          	bltu	a4,a1,80002484 <_ZN8MemAlloc8mem_freeEPv+0xdc>
    MemFree* newSeg = (MemFree*)((char*)addr - sizeof(MemFree));
    800023ec:	ff058593          	addi	a1,a1,-16
    if (newSeg->size <= 0)
    800023f0:	ff07b703          	ld	a4,-16(a5)
    800023f4:	08070c63          	beqz	a4,8000248c <_ZN8MemAlloc8mem_freeEPv+0xe4>
    if (!head || addr < (char*)head) {
    800023f8:	00053683          	ld	a3,0(a0)
    800023fc:	00068463          	beqz	a3,80002404 <_ZN8MemAlloc8mem_freeEPv+0x5c>
    80002400:	04d7f663          	bgeu	a5,a3,8000244c <_ZN8MemAlloc8mem_freeEPv+0xa4>
        newSeg->next = head;
    80002404:	fed7bc23          	sd	a3,-8(a5)
        head = newSeg;
    80002408:	00b4b023          	sd	a1,0(s1)
    MemFree* prev = nullptr;
    8000240c:	00000913          	li	s2,0
    try_to_join(newSeg);
    80002410:	00048513          	mv	a0,s1
    80002414:	00000097          	auipc	ra,0x0
    80002418:	f48080e7          	jalr	-184(ra) # 8000235c <_ZN8MemAlloc11try_to_joinEPNS_7MemFreeE>
    if (prev) {
    8000241c:	06090c63          	beqz	s2,80002494 <_ZN8MemAlloc8mem_freeEPv+0xec>
        try_to_join(prev);
    80002420:	00090593          	mv	a1,s2
    80002424:	00048513          	mv	a0,s1
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	f34080e7          	jalr	-204(ra) # 8000235c <_ZN8MemAlloc11try_to_joinEPNS_7MemFreeE>
    return 0;
    80002430:	00000513          	li	a0,0
}
    80002434:	01813083          	ld	ra,24(sp)
    80002438:	01013403          	ld	s0,16(sp)
    8000243c:	00813483          	ld	s1,8(sp)
    80002440:	00013903          	ld	s2,0(sp)
    80002444:	02010113          	addi	sp,sp,32
    80002448:	00008067          	ret
    MemFree* prev = nullptr;
    8000244c:	00000913          	li	s2,0
    80002450:	00c0006f          	j	8000245c <_ZN8MemAlloc8mem_freeEPv+0xb4>
            prev = cur;
    80002454:	00068913          	mv	s2,a3
        for (cur = head; cur->next != nullptr && addr > (char*)(cur->next); cur = cur->next) {
    80002458:	00070693          	mv	a3,a4
    8000245c:	0086b703          	ld	a4,8(a3)
    80002460:	00070463          	beqz	a4,80002468 <_ZN8MemAlloc8mem_freeEPv+0xc0>
    80002464:	fef768e3          	bltu	a4,a5,80002454 <_ZN8MemAlloc8mem_freeEPv+0xac>
        newSeg->next = cur->next;
    80002468:	fee7bc23          	sd	a4,-8(a5)
        cur->next = newSeg;
    8000246c:	00b6b423          	sd	a1,8(a3)
    80002470:	fa1ff06f          	j	80002410 <_ZN8MemAlloc8mem_freeEPv+0x68>
        return -1;
    80002474:	fff00513          	li	a0,-1
}
    80002478:	00008067          	ret
        return -1;
    8000247c:	fff00513          	li	a0,-1
    80002480:	fb5ff06f          	j	80002434 <_ZN8MemAlloc8mem_freeEPv+0x8c>
    80002484:	fff00513          	li	a0,-1
    80002488:	fadff06f          	j	80002434 <_ZN8MemAlloc8mem_freeEPv+0x8c>
        return -2;
    8000248c:	ffe00513          	li	a0,-2
    80002490:	fa5ff06f          	j	80002434 <_ZN8MemAlloc8mem_freeEPv+0x8c>
    return 0;
    80002494:	00000513          	li	a0,0
    80002498:	f9dff06f          	j	80002434 <_ZN8MemAlloc8mem_freeEPv+0x8c>

000000008000249c <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    8000249c:	fe010113          	addi	sp,sp,-32
    800024a0:	00113c23          	sd	ra,24(sp)
    800024a4:	00813823          	sd	s0,16(sp)
    800024a8:	00913423          	sd	s1,8(sp)
    800024ac:	01213023          	sd	s2,0(sp)
    800024b0:	02010413          	addi	s0,sp,32
    800024b4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800024b8:	00000913          	li	s2,0
    800024bc:	00c0006f          	j	800024c8 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800024c0:	fffff097          	auipc	ra,0xfffff
    800024c4:	e6c080e7          	jalr	-404(ra) # 8000132c <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800024c8:	fffff097          	auipc	ra,0xfffff
    800024cc:	fc8080e7          	jalr	-56(ra) # 80001490 <_Z4getcv>
    800024d0:	0005059b          	sext.w	a1,a0
    800024d4:	01b00793          	li	a5,27
    800024d8:	02f58a63          	beq	a1,a5,8000250c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    800024dc:	0084b503          	ld	a0,8(s1)
    800024e0:	00003097          	auipc	ra,0x3
    800024e4:	3f4080e7          	jalr	1012(ra) # 800058d4 <_ZN6Buffer3putEi>
        i++;
    800024e8:	0019071b          	addiw	a4,s2,1
    800024ec:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800024f0:	0004a683          	lw	a3,0(s1)
    800024f4:	0026979b          	slliw	a5,a3,0x2
    800024f8:	00d787bb          	addw	a5,a5,a3
    800024fc:	0017979b          	slliw	a5,a5,0x1
    80002500:	02f767bb          	remw	a5,a4,a5
    80002504:	fc0792e3          	bnez	a5,800024c8 <_ZL16producerKeyboardPv+0x2c>
    80002508:	fb9ff06f          	j	800024c0 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000250c:	00100793          	li	a5,1
    80002510:	00008717          	auipc	a4,0x8
    80002514:	f2f72823          	sw	a5,-208(a4) # 8000a440 <_ZL9threadEnd>
    data->buffer->put('!');
    80002518:	02100593          	li	a1,33
    8000251c:	0084b503          	ld	a0,8(s1)
    80002520:	00003097          	auipc	ra,0x3
    80002524:	3b4080e7          	jalr	948(ra) # 800058d4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002528:	0104b503          	ld	a0,16(s1)
    8000252c:	fffff097          	auipc	ra,0xfffff
    80002530:	ec4080e7          	jalr	-316(ra) # 800013f0 <_Z10sem_signalP3Sem>
}
    80002534:	01813083          	ld	ra,24(sp)
    80002538:	01013403          	ld	s0,16(sp)
    8000253c:	00813483          	ld	s1,8(sp)
    80002540:	00013903          	ld	s2,0(sp)
    80002544:	02010113          	addi	sp,sp,32
    80002548:	00008067          	ret

000000008000254c <_ZL8producerPv>:

static void producer(void *arg) {
    8000254c:	fe010113          	addi	sp,sp,-32
    80002550:	00113c23          	sd	ra,24(sp)
    80002554:	00813823          	sd	s0,16(sp)
    80002558:	00913423          	sd	s1,8(sp)
    8000255c:	01213023          	sd	s2,0(sp)
    80002560:	02010413          	addi	s0,sp,32
    80002564:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002568:	00000913          	li	s2,0
    8000256c:	00c0006f          	j	80002578 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002570:	fffff097          	auipc	ra,0xfffff
    80002574:	dbc080e7          	jalr	-580(ra) # 8000132c <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002578:	00008797          	auipc	a5,0x8
    8000257c:	ec87a783          	lw	a5,-312(a5) # 8000a440 <_ZL9threadEnd>
    80002580:	02079e63          	bnez	a5,800025bc <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002584:	0004a583          	lw	a1,0(s1)
    80002588:	0305859b          	addiw	a1,a1,48
    8000258c:	0084b503          	ld	a0,8(s1)
    80002590:	00003097          	auipc	ra,0x3
    80002594:	344080e7          	jalr	836(ra) # 800058d4 <_ZN6Buffer3putEi>
        i++;
    80002598:	0019071b          	addiw	a4,s2,1
    8000259c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800025a0:	0004a683          	lw	a3,0(s1)
    800025a4:	0026979b          	slliw	a5,a3,0x2
    800025a8:	00d787bb          	addw	a5,a5,a3
    800025ac:	0017979b          	slliw	a5,a5,0x1
    800025b0:	02f767bb          	remw	a5,a4,a5
    800025b4:	fc0792e3          	bnez	a5,80002578 <_ZL8producerPv+0x2c>
    800025b8:	fb9ff06f          	j	80002570 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800025bc:	0104b503          	ld	a0,16(s1)
    800025c0:	fffff097          	auipc	ra,0xfffff
    800025c4:	e30080e7          	jalr	-464(ra) # 800013f0 <_Z10sem_signalP3Sem>
}
    800025c8:	01813083          	ld	ra,24(sp)
    800025cc:	01013403          	ld	s0,16(sp)
    800025d0:	00813483          	ld	s1,8(sp)
    800025d4:	00013903          	ld	s2,0(sp)
    800025d8:	02010113          	addi	sp,sp,32
    800025dc:	00008067          	ret

00000000800025e0 <_ZL8consumerPv>:

static void consumer(void *arg) {
    800025e0:	fd010113          	addi	sp,sp,-48
    800025e4:	02113423          	sd	ra,40(sp)
    800025e8:	02813023          	sd	s0,32(sp)
    800025ec:	00913c23          	sd	s1,24(sp)
    800025f0:	01213823          	sd	s2,16(sp)
    800025f4:	01313423          	sd	s3,8(sp)
    800025f8:	03010413          	addi	s0,sp,48
    800025fc:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002600:	00000993          	li	s3,0
    80002604:	01c0006f          	j	80002620 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002608:	fffff097          	auipc	ra,0xfffff
    8000260c:	d24080e7          	jalr	-732(ra) # 8000132c <_Z15thread_dispatchv>
    80002610:	0500006f          	j	80002660 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002614:	00a00513          	li	a0,10
    80002618:	fffff097          	auipc	ra,0xfffff
    8000261c:	eac080e7          	jalr	-340(ra) # 800014c4 <_Z4putcc>
    while (!threadEnd) {
    80002620:	00008797          	auipc	a5,0x8
    80002624:	e207a783          	lw	a5,-480(a5) # 8000a440 <_ZL9threadEnd>
    80002628:	06079063          	bnez	a5,80002688 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    8000262c:	00893503          	ld	a0,8(s2)
    80002630:	00003097          	auipc	ra,0x3
    80002634:	334080e7          	jalr	820(ra) # 80005964 <_ZN6Buffer3getEv>
        i++;
    80002638:	0019849b          	addiw	s1,s3,1
    8000263c:	0004899b          	sext.w	s3,s1
        putc(key);
    80002640:	0ff57513          	andi	a0,a0,255
    80002644:	fffff097          	auipc	ra,0xfffff
    80002648:	e80080e7          	jalr	-384(ra) # 800014c4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000264c:	00092703          	lw	a4,0(s2)
    80002650:	0027179b          	slliw	a5,a4,0x2
    80002654:	00e787bb          	addw	a5,a5,a4
    80002658:	02f4e7bb          	remw	a5,s1,a5
    8000265c:	fa0786e3          	beqz	a5,80002608 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002660:	05000793          	li	a5,80
    80002664:	02f4e4bb          	remw	s1,s1,a5
    80002668:	fa049ce3          	bnez	s1,80002620 <_ZL8consumerPv+0x40>
    8000266c:	fa9ff06f          	j	80002614 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002670:	00893503          	ld	a0,8(s2)
    80002674:	00003097          	auipc	ra,0x3
    80002678:	2f0080e7          	jalr	752(ra) # 80005964 <_ZN6Buffer3getEv>
        putc(key);
    8000267c:	0ff57513          	andi	a0,a0,255
    80002680:	fffff097          	auipc	ra,0xfffff
    80002684:	e44080e7          	jalr	-444(ra) # 800014c4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002688:	00893503          	ld	a0,8(s2)
    8000268c:	00003097          	auipc	ra,0x3
    80002690:	364080e7          	jalr	868(ra) # 800059f0 <_ZN6Buffer6getCntEv>
    80002694:	fca04ee3          	bgtz	a0,80002670 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002698:	01093503          	ld	a0,16(s2)
    8000269c:	fffff097          	auipc	ra,0xfffff
    800026a0:	d54080e7          	jalr	-684(ra) # 800013f0 <_Z10sem_signalP3Sem>
}
    800026a4:	02813083          	ld	ra,40(sp)
    800026a8:	02013403          	ld	s0,32(sp)
    800026ac:	01813483          	ld	s1,24(sp)
    800026b0:	01013903          	ld	s2,16(sp)
    800026b4:	00813983          	ld	s3,8(sp)
    800026b8:	03010113          	addi	sp,sp,48
    800026bc:	00008067          	ret

00000000800026c0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800026c0:	f9010113          	addi	sp,sp,-112
    800026c4:	06113423          	sd	ra,104(sp)
    800026c8:	06813023          	sd	s0,96(sp)
    800026cc:	04913c23          	sd	s1,88(sp)
    800026d0:	05213823          	sd	s2,80(sp)
    800026d4:	05313423          	sd	s3,72(sp)
    800026d8:	05413023          	sd	s4,64(sp)
    800026dc:	03513c23          	sd	s5,56(sp)
    800026e0:	03613823          	sd	s6,48(sp)
    800026e4:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800026e8:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800026ec:	00006517          	auipc	a0,0x6
    800026f0:	a7c50513          	addi	a0,a0,-1412 # 80008168 <CONSOLE_STATUS+0x158>
    800026f4:	00002097          	auipc	ra,0x2
    800026f8:	220080e7          	jalr	544(ra) # 80004914 <_Z11printStringPKc>
    getString(input, 30);
    800026fc:	01e00593          	li	a1,30
    80002700:	fa040493          	addi	s1,s0,-96
    80002704:	00048513          	mv	a0,s1
    80002708:	00002097          	auipc	ra,0x2
    8000270c:	294080e7          	jalr	660(ra) # 8000499c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002710:	00048513          	mv	a0,s1
    80002714:	00002097          	auipc	ra,0x2
    80002718:	360080e7          	jalr	864(ra) # 80004a74 <_Z11stringToIntPKc>
    8000271c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002720:	00006517          	auipc	a0,0x6
    80002724:	a6850513          	addi	a0,a0,-1432 # 80008188 <CONSOLE_STATUS+0x178>
    80002728:	00002097          	auipc	ra,0x2
    8000272c:	1ec080e7          	jalr	492(ra) # 80004914 <_Z11printStringPKc>
    getString(input, 30);
    80002730:	01e00593          	li	a1,30
    80002734:	00048513          	mv	a0,s1
    80002738:	00002097          	auipc	ra,0x2
    8000273c:	264080e7          	jalr	612(ra) # 8000499c <_Z9getStringPci>
    n = stringToInt(input);
    80002740:	00048513          	mv	a0,s1
    80002744:	00002097          	auipc	ra,0x2
    80002748:	330080e7          	jalr	816(ra) # 80004a74 <_Z11stringToIntPKc>
    8000274c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002750:	00006517          	auipc	a0,0x6
    80002754:	a5850513          	addi	a0,a0,-1448 # 800081a8 <CONSOLE_STATUS+0x198>
    80002758:	00002097          	auipc	ra,0x2
    8000275c:	1bc080e7          	jalr	444(ra) # 80004914 <_Z11printStringPKc>
    80002760:	00000613          	li	a2,0
    80002764:	00a00593          	li	a1,10
    80002768:	00090513          	mv	a0,s2
    8000276c:	00002097          	auipc	ra,0x2
    80002770:	358080e7          	jalr	856(ra) # 80004ac4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80002774:	00006517          	auipc	a0,0x6
    80002778:	a4c50513          	addi	a0,a0,-1460 # 800081c0 <CONSOLE_STATUS+0x1b0>
    8000277c:	00002097          	auipc	ra,0x2
    80002780:	198080e7          	jalr	408(ra) # 80004914 <_Z11printStringPKc>
    80002784:	00000613          	li	a2,0
    80002788:	00a00593          	li	a1,10
    8000278c:	00048513          	mv	a0,s1
    80002790:	00002097          	auipc	ra,0x2
    80002794:	334080e7          	jalr	820(ra) # 80004ac4 <_Z8printIntiii>
    printString(".\n");
    80002798:	00006517          	auipc	a0,0x6
    8000279c:	a4050513          	addi	a0,a0,-1472 # 800081d8 <CONSOLE_STATUS+0x1c8>
    800027a0:	00002097          	auipc	ra,0x2
    800027a4:	174080e7          	jalr	372(ra) # 80004914 <_Z11printStringPKc>
    if(threadNum > n) {
    800027a8:	0324c463          	blt	s1,s2,800027d0 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800027ac:	03205c63          	blez	s2,800027e4 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800027b0:	03800513          	li	a0,56
    800027b4:	fffff097          	auipc	ra,0xfffff
    800027b8:	d6c080e7          	jalr	-660(ra) # 80001520 <_Znwm>
    800027bc:	00050a13          	mv	s4,a0
    800027c0:	00048593          	mv	a1,s1
    800027c4:	00003097          	auipc	ra,0x3
    800027c8:	074080e7          	jalr	116(ra) # 80005838 <_ZN6BufferC1Ei>
    800027cc:	0300006f          	j	800027fc <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800027d0:	00006517          	auipc	a0,0x6
    800027d4:	a1050513          	addi	a0,a0,-1520 # 800081e0 <CONSOLE_STATUS+0x1d0>
    800027d8:	00002097          	auipc	ra,0x2
    800027dc:	13c080e7          	jalr	316(ra) # 80004914 <_Z11printStringPKc>
        return;
    800027e0:	0140006f          	j	800027f4 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800027e4:	00006517          	auipc	a0,0x6
    800027e8:	a3c50513          	addi	a0,a0,-1476 # 80008220 <CONSOLE_STATUS+0x210>
    800027ec:	00002097          	auipc	ra,0x2
    800027f0:	128080e7          	jalr	296(ra) # 80004914 <_Z11printStringPKc>
        return;
    800027f4:	000b0113          	mv	sp,s6
    800027f8:	1500006f          	j	80002948 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800027fc:	00000593          	li	a1,0
    80002800:	00008517          	auipc	a0,0x8
    80002804:	c4850513          	addi	a0,a0,-952 # 8000a448 <_ZL10waitForAll>
    80002808:	fffff097          	auipc	ra,0xfffff
    8000280c:	b54080e7          	jalr	-1196(ra) # 8000135c <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80002810:	00391793          	slli	a5,s2,0x3
    80002814:	00f78793          	addi	a5,a5,15
    80002818:	ff07f793          	andi	a5,a5,-16
    8000281c:	40f10133          	sub	sp,sp,a5
    80002820:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002824:	0019071b          	addiw	a4,s2,1
    80002828:	00171793          	slli	a5,a4,0x1
    8000282c:	00e787b3          	add	a5,a5,a4
    80002830:	00379793          	slli	a5,a5,0x3
    80002834:	00f78793          	addi	a5,a5,15
    80002838:	ff07f793          	andi	a5,a5,-16
    8000283c:	40f10133          	sub	sp,sp,a5
    80002840:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002844:	00191613          	slli	a2,s2,0x1
    80002848:	012607b3          	add	a5,a2,s2
    8000284c:	00379793          	slli	a5,a5,0x3
    80002850:	00f987b3          	add	a5,s3,a5
    80002854:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002858:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    8000285c:	00008717          	auipc	a4,0x8
    80002860:	bec73703          	ld	a4,-1044(a4) # 8000a448 <_ZL10waitForAll>
    80002864:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002868:	00078613          	mv	a2,a5
    8000286c:	00000597          	auipc	a1,0x0
    80002870:	d7458593          	addi	a1,a1,-652 # 800025e0 <_ZL8consumerPv>
    80002874:	f9840513          	addi	a0,s0,-104
    80002878:	fffff097          	auipc	ra,0xfffff
    8000287c:	a40080e7          	jalr	-1472(ra) # 800012b8 <_Z13thread_createPP3CCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80002880:	00000493          	li	s1,0
    80002884:	0280006f          	j	800028ac <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80002888:	00000597          	auipc	a1,0x0
    8000288c:	c1458593          	addi	a1,a1,-1004 # 8000249c <_ZL16producerKeyboardPv>
                      data + i);
    80002890:	00179613          	slli	a2,a5,0x1
    80002894:	00f60633          	add	a2,a2,a5
    80002898:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    8000289c:	00c98633          	add	a2,s3,a2
    800028a0:	fffff097          	auipc	ra,0xfffff
    800028a4:	a18080e7          	jalr	-1512(ra) # 800012b8 <_Z13thread_createPP3CCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800028a8:	0014849b          	addiw	s1,s1,1
    800028ac:	0524d263          	bge	s1,s2,800028f0 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800028b0:	00149793          	slli	a5,s1,0x1
    800028b4:	009787b3          	add	a5,a5,s1
    800028b8:	00379793          	slli	a5,a5,0x3
    800028bc:	00f987b3          	add	a5,s3,a5
    800028c0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800028c4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800028c8:	00008717          	auipc	a4,0x8
    800028cc:	b8073703          	ld	a4,-1152(a4) # 8000a448 <_ZL10waitForAll>
    800028d0:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800028d4:	00048793          	mv	a5,s1
    800028d8:	00349513          	slli	a0,s1,0x3
    800028dc:	00aa8533          	add	a0,s5,a0
    800028e0:	fa9054e3          	blez	s1,80002888 <_Z22producerConsumer_C_APIv+0x1c8>
    800028e4:	00000597          	auipc	a1,0x0
    800028e8:	c6858593          	addi	a1,a1,-920 # 8000254c <_ZL8producerPv>
    800028ec:	fa5ff06f          	j	80002890 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800028f0:	fffff097          	auipc	ra,0xfffff
    800028f4:	a3c080e7          	jalr	-1476(ra) # 8000132c <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800028f8:	00000493          	li	s1,0
    800028fc:	00994e63          	blt	s2,s1,80002918 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002900:	00008517          	auipc	a0,0x8
    80002904:	b4853503          	ld	a0,-1208(a0) # 8000a448 <_ZL10waitForAll>
    80002908:	fffff097          	auipc	ra,0xfffff
    8000290c:	ab8080e7          	jalr	-1352(ra) # 800013c0 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80002910:	0014849b          	addiw	s1,s1,1
    80002914:	fe9ff06f          	j	800028fc <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002918:	00008517          	auipc	a0,0x8
    8000291c:	b3053503          	ld	a0,-1232(a0) # 8000a448 <_ZL10waitForAll>
    80002920:	fffff097          	auipc	ra,0xfffff
    80002924:	a70080e7          	jalr	-1424(ra) # 80001390 <_Z9sem_closeP3Sem>
    delete buffer;
    80002928:	000a0e63          	beqz	s4,80002944 <_Z22producerConsumer_C_APIv+0x284>
    8000292c:	000a0513          	mv	a0,s4
    80002930:	00003097          	auipc	ra,0x3
    80002934:	148080e7          	jalr	328(ra) # 80005a78 <_ZN6BufferD1Ev>
    80002938:	000a0513          	mv	a0,s4
    8000293c:	fffff097          	auipc	ra,0xfffff
    80002940:	c34080e7          	jalr	-972(ra) # 80001570 <_ZdlPv>
    80002944:	000b0113          	mv	sp,s6

}
    80002948:	f9040113          	addi	sp,s0,-112
    8000294c:	06813083          	ld	ra,104(sp)
    80002950:	06013403          	ld	s0,96(sp)
    80002954:	05813483          	ld	s1,88(sp)
    80002958:	05013903          	ld	s2,80(sp)
    8000295c:	04813983          	ld	s3,72(sp)
    80002960:	04013a03          	ld	s4,64(sp)
    80002964:	03813a83          	ld	s5,56(sp)
    80002968:	03013b03          	ld	s6,48(sp)
    8000296c:	07010113          	addi	sp,sp,112
    80002970:	00008067          	ret
    80002974:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80002978:	000a0513          	mv	a0,s4
    8000297c:	fffff097          	auipc	ra,0xfffff
    80002980:	bf4080e7          	jalr	-1036(ra) # 80001570 <_ZdlPv>
    80002984:	00048513          	mv	a0,s1
    80002988:	00009097          	auipc	ra,0x9
    8000298c:	bd0080e7          	jalr	-1072(ra) # 8000b558 <_Unwind_Resume>

0000000080002990 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80002990:	fe010113          	addi	sp,sp,-32
    80002994:	00113c23          	sd	ra,24(sp)
    80002998:	00813823          	sd	s0,16(sp)
    8000299c:	00913423          	sd	s1,8(sp)
    800029a0:	01213023          	sd	s2,0(sp)
    800029a4:	02010413          	addi	s0,sp,32
    800029a8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800029ac:	00100793          	li	a5,1
    800029b0:	02a7f863          	bgeu	a5,a0,800029e0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800029b4:	00a00793          	li	a5,10
    800029b8:	02f577b3          	remu	a5,a0,a5
    800029bc:	02078e63          	beqz	a5,800029f8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800029c0:	fff48513          	addi	a0,s1,-1
    800029c4:	00000097          	auipc	ra,0x0
    800029c8:	fcc080e7          	jalr	-52(ra) # 80002990 <_ZL9fibonaccim>
    800029cc:	00050913          	mv	s2,a0
    800029d0:	ffe48513          	addi	a0,s1,-2
    800029d4:	00000097          	auipc	ra,0x0
    800029d8:	fbc080e7          	jalr	-68(ra) # 80002990 <_ZL9fibonaccim>
    800029dc:	00a90533          	add	a0,s2,a0
}
    800029e0:	01813083          	ld	ra,24(sp)
    800029e4:	01013403          	ld	s0,16(sp)
    800029e8:	00813483          	ld	s1,8(sp)
    800029ec:	00013903          	ld	s2,0(sp)
    800029f0:	02010113          	addi	sp,sp,32
    800029f4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800029f8:	fffff097          	auipc	ra,0xfffff
    800029fc:	934080e7          	jalr	-1740(ra) # 8000132c <_Z15thread_dispatchv>
    80002a00:	fc1ff06f          	j	800029c0 <_ZL9fibonaccim+0x30>

0000000080002a04 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002a04:	fe010113          	addi	sp,sp,-32
    80002a08:	00113c23          	sd	ra,24(sp)
    80002a0c:	00813823          	sd	s0,16(sp)
    80002a10:	00913423          	sd	s1,8(sp)
    80002a14:	01213023          	sd	s2,0(sp)
    80002a18:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80002a1c:	00000913          	li	s2,0
    80002a20:	0380006f          	j	80002a58 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	908080e7          	jalr	-1784(ra) # 8000132c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a2c:	00148493          	addi	s1,s1,1
    80002a30:	000027b7          	lui	a5,0x2
    80002a34:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a38:	0097ee63          	bltu	a5,s1,80002a54 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a3c:	00000713          	li	a4,0
    80002a40:	000077b7          	lui	a5,0x7
    80002a44:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a48:	fce7eee3          	bltu	a5,a4,80002a24 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80002a4c:	00170713          	addi	a4,a4,1
    80002a50:	ff1ff06f          	j	80002a40 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002a54:	00190913          	addi	s2,s2,1
    80002a58:	00900793          	li	a5,9
    80002a5c:	0527e063          	bltu	a5,s2,80002a9c <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002a60:	00005517          	auipc	a0,0x5
    80002a64:	7f050513          	addi	a0,a0,2032 # 80008250 <CONSOLE_STATUS+0x240>
    80002a68:	00002097          	auipc	ra,0x2
    80002a6c:	eac080e7          	jalr	-340(ra) # 80004914 <_Z11printStringPKc>
    80002a70:	00000613          	li	a2,0
    80002a74:	00a00593          	li	a1,10
    80002a78:	0009051b          	sext.w	a0,s2
    80002a7c:	00002097          	auipc	ra,0x2
    80002a80:	048080e7          	jalr	72(ra) # 80004ac4 <_Z8printIntiii>
    80002a84:	00006517          	auipc	a0,0x6
    80002a88:	a4c50513          	addi	a0,a0,-1460 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80002a8c:	00002097          	auipc	ra,0x2
    80002a90:	e88080e7          	jalr	-376(ra) # 80004914 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002a94:	00000493          	li	s1,0
    80002a98:	f99ff06f          	j	80002a30 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80002a9c:	00005517          	auipc	a0,0x5
    80002aa0:	7bc50513          	addi	a0,a0,1980 # 80008258 <CONSOLE_STATUS+0x248>
    80002aa4:	00002097          	auipc	ra,0x2
    80002aa8:	e70080e7          	jalr	-400(ra) # 80004914 <_Z11printStringPKc>
    finishedA = true;
    80002aac:	00100793          	li	a5,1
    80002ab0:	00008717          	auipc	a4,0x8
    80002ab4:	9af70023          	sb	a5,-1632(a4) # 8000a450 <_ZL9finishedA>
}
    80002ab8:	01813083          	ld	ra,24(sp)
    80002abc:	01013403          	ld	s0,16(sp)
    80002ac0:	00813483          	ld	s1,8(sp)
    80002ac4:	00013903          	ld	s2,0(sp)
    80002ac8:	02010113          	addi	sp,sp,32
    80002acc:	00008067          	ret

0000000080002ad0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002ad0:	fe010113          	addi	sp,sp,-32
    80002ad4:	00113c23          	sd	ra,24(sp)
    80002ad8:	00813823          	sd	s0,16(sp)
    80002adc:	00913423          	sd	s1,8(sp)
    80002ae0:	01213023          	sd	s2,0(sp)
    80002ae4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002ae8:	00000913          	li	s2,0
    80002aec:	0380006f          	j	80002b24 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002af0:	fffff097          	auipc	ra,0xfffff
    80002af4:	83c080e7          	jalr	-1988(ra) # 8000132c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002af8:	00148493          	addi	s1,s1,1
    80002afc:	000027b7          	lui	a5,0x2
    80002b00:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002b04:	0097ee63          	bltu	a5,s1,80002b20 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002b08:	00000713          	li	a4,0
    80002b0c:	000077b7          	lui	a5,0x7
    80002b10:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002b14:	fce7eee3          	bltu	a5,a4,80002af0 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002b18:	00170713          	addi	a4,a4,1
    80002b1c:	ff1ff06f          	j	80002b0c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002b20:	00190913          	addi	s2,s2,1
    80002b24:	00f00793          	li	a5,15
    80002b28:	0527e063          	bltu	a5,s2,80002b68 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002b2c:	00005517          	auipc	a0,0x5
    80002b30:	73c50513          	addi	a0,a0,1852 # 80008268 <CONSOLE_STATUS+0x258>
    80002b34:	00002097          	auipc	ra,0x2
    80002b38:	de0080e7          	jalr	-544(ra) # 80004914 <_Z11printStringPKc>
    80002b3c:	00000613          	li	a2,0
    80002b40:	00a00593          	li	a1,10
    80002b44:	0009051b          	sext.w	a0,s2
    80002b48:	00002097          	auipc	ra,0x2
    80002b4c:	f7c080e7          	jalr	-132(ra) # 80004ac4 <_Z8printIntiii>
    80002b50:	00006517          	auipc	a0,0x6
    80002b54:	98050513          	addi	a0,a0,-1664 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80002b58:	00002097          	auipc	ra,0x2
    80002b5c:	dbc080e7          	jalr	-580(ra) # 80004914 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002b60:	00000493          	li	s1,0
    80002b64:	f99ff06f          	j	80002afc <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002b68:	00005517          	auipc	a0,0x5
    80002b6c:	70850513          	addi	a0,a0,1800 # 80008270 <CONSOLE_STATUS+0x260>
    80002b70:	00002097          	auipc	ra,0x2
    80002b74:	da4080e7          	jalr	-604(ra) # 80004914 <_Z11printStringPKc>
    finishedB = true;
    80002b78:	00100793          	li	a5,1
    80002b7c:	00008717          	auipc	a4,0x8
    80002b80:	8cf70aa3          	sb	a5,-1835(a4) # 8000a451 <_ZL9finishedB>
    thread_dispatch();
    80002b84:	ffffe097          	auipc	ra,0xffffe
    80002b88:	7a8080e7          	jalr	1960(ra) # 8000132c <_Z15thread_dispatchv>
}
    80002b8c:	01813083          	ld	ra,24(sp)
    80002b90:	01013403          	ld	s0,16(sp)
    80002b94:	00813483          	ld	s1,8(sp)
    80002b98:	00013903          	ld	s2,0(sp)
    80002b9c:	02010113          	addi	sp,sp,32
    80002ba0:	00008067          	ret

0000000080002ba4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002ba4:	fe010113          	addi	sp,sp,-32
    80002ba8:	00113c23          	sd	ra,24(sp)
    80002bac:	00813823          	sd	s0,16(sp)
    80002bb0:	00913423          	sd	s1,8(sp)
    80002bb4:	01213023          	sd	s2,0(sp)
    80002bb8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002bbc:	00000493          	li	s1,0
    80002bc0:	0400006f          	j	80002c00 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002bc4:	00005517          	auipc	a0,0x5
    80002bc8:	6bc50513          	addi	a0,a0,1724 # 80008280 <CONSOLE_STATUS+0x270>
    80002bcc:	00002097          	auipc	ra,0x2
    80002bd0:	d48080e7          	jalr	-696(ra) # 80004914 <_Z11printStringPKc>
    80002bd4:	00000613          	li	a2,0
    80002bd8:	00a00593          	li	a1,10
    80002bdc:	00048513          	mv	a0,s1
    80002be0:	00002097          	auipc	ra,0x2
    80002be4:	ee4080e7          	jalr	-284(ra) # 80004ac4 <_Z8printIntiii>
    80002be8:	00006517          	auipc	a0,0x6
    80002bec:	8e850513          	addi	a0,a0,-1816 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80002bf0:	00002097          	auipc	ra,0x2
    80002bf4:	d24080e7          	jalr	-732(ra) # 80004914 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002bf8:	0014849b          	addiw	s1,s1,1
    80002bfc:	0ff4f493          	andi	s1,s1,255
    80002c00:	00200793          	li	a5,2
    80002c04:	fc97f0e3          	bgeu	a5,s1,80002bc4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002c08:	00005517          	auipc	a0,0x5
    80002c0c:	68050513          	addi	a0,a0,1664 # 80008288 <CONSOLE_STATUS+0x278>
    80002c10:	00002097          	auipc	ra,0x2
    80002c14:	d04080e7          	jalr	-764(ra) # 80004914 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002c18:	00700313          	li	t1,7
    thread_dispatch();
    80002c1c:	ffffe097          	auipc	ra,0xffffe
    80002c20:	710080e7          	jalr	1808(ra) # 8000132c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002c24:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002c28:	00005517          	auipc	a0,0x5
    80002c2c:	67050513          	addi	a0,a0,1648 # 80008298 <CONSOLE_STATUS+0x288>
    80002c30:	00002097          	auipc	ra,0x2
    80002c34:	ce4080e7          	jalr	-796(ra) # 80004914 <_Z11printStringPKc>
    80002c38:	00000613          	li	a2,0
    80002c3c:	00a00593          	li	a1,10
    80002c40:	0009051b          	sext.w	a0,s2
    80002c44:	00002097          	auipc	ra,0x2
    80002c48:	e80080e7          	jalr	-384(ra) # 80004ac4 <_Z8printIntiii>
    80002c4c:	00006517          	auipc	a0,0x6
    80002c50:	88450513          	addi	a0,a0,-1916 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80002c54:	00002097          	auipc	ra,0x2
    80002c58:	cc0080e7          	jalr	-832(ra) # 80004914 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002c5c:	00c00513          	li	a0,12
    80002c60:	00000097          	auipc	ra,0x0
    80002c64:	d30080e7          	jalr	-720(ra) # 80002990 <_ZL9fibonaccim>
    80002c68:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002c6c:	00005517          	auipc	a0,0x5
    80002c70:	63450513          	addi	a0,a0,1588 # 800082a0 <CONSOLE_STATUS+0x290>
    80002c74:	00002097          	auipc	ra,0x2
    80002c78:	ca0080e7          	jalr	-864(ra) # 80004914 <_Z11printStringPKc>
    80002c7c:	00000613          	li	a2,0
    80002c80:	00a00593          	li	a1,10
    80002c84:	0009051b          	sext.w	a0,s2
    80002c88:	00002097          	auipc	ra,0x2
    80002c8c:	e3c080e7          	jalr	-452(ra) # 80004ac4 <_Z8printIntiii>
    80002c90:	00006517          	auipc	a0,0x6
    80002c94:	84050513          	addi	a0,a0,-1984 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80002c98:	00002097          	auipc	ra,0x2
    80002c9c:	c7c080e7          	jalr	-900(ra) # 80004914 <_Z11printStringPKc>
    80002ca0:	0400006f          	j	80002ce0 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002ca4:	00005517          	auipc	a0,0x5
    80002ca8:	5dc50513          	addi	a0,a0,1500 # 80008280 <CONSOLE_STATUS+0x270>
    80002cac:	00002097          	auipc	ra,0x2
    80002cb0:	c68080e7          	jalr	-920(ra) # 80004914 <_Z11printStringPKc>
    80002cb4:	00000613          	li	a2,0
    80002cb8:	00a00593          	li	a1,10
    80002cbc:	00048513          	mv	a0,s1
    80002cc0:	00002097          	auipc	ra,0x2
    80002cc4:	e04080e7          	jalr	-508(ra) # 80004ac4 <_Z8printIntiii>
    80002cc8:	00006517          	auipc	a0,0x6
    80002ccc:	80850513          	addi	a0,a0,-2040 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80002cd0:	00002097          	auipc	ra,0x2
    80002cd4:	c44080e7          	jalr	-956(ra) # 80004914 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002cd8:	0014849b          	addiw	s1,s1,1
    80002cdc:	0ff4f493          	andi	s1,s1,255
    80002ce0:	00500793          	li	a5,5
    80002ce4:	fc97f0e3          	bgeu	a5,s1,80002ca4 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002ce8:	00005517          	auipc	a0,0x5
    80002cec:	57050513          	addi	a0,a0,1392 # 80008258 <CONSOLE_STATUS+0x248>
    80002cf0:	00002097          	auipc	ra,0x2
    80002cf4:	c24080e7          	jalr	-988(ra) # 80004914 <_Z11printStringPKc>
    finishedC = true;
    80002cf8:	00100793          	li	a5,1
    80002cfc:	00007717          	auipc	a4,0x7
    80002d00:	74f70b23          	sb	a5,1878(a4) # 8000a452 <_ZL9finishedC>
    thread_dispatch();
    80002d04:	ffffe097          	auipc	ra,0xffffe
    80002d08:	628080e7          	jalr	1576(ra) # 8000132c <_Z15thread_dispatchv>
}
    80002d0c:	01813083          	ld	ra,24(sp)
    80002d10:	01013403          	ld	s0,16(sp)
    80002d14:	00813483          	ld	s1,8(sp)
    80002d18:	00013903          	ld	s2,0(sp)
    80002d1c:	02010113          	addi	sp,sp,32
    80002d20:	00008067          	ret

0000000080002d24 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002d24:	fe010113          	addi	sp,sp,-32
    80002d28:	00113c23          	sd	ra,24(sp)
    80002d2c:	00813823          	sd	s0,16(sp)
    80002d30:	00913423          	sd	s1,8(sp)
    80002d34:	01213023          	sd	s2,0(sp)
    80002d38:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002d3c:	00a00493          	li	s1,10
    80002d40:	0400006f          	j	80002d80 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002d44:	00005517          	auipc	a0,0x5
    80002d48:	56c50513          	addi	a0,a0,1388 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80002d4c:	00002097          	auipc	ra,0x2
    80002d50:	bc8080e7          	jalr	-1080(ra) # 80004914 <_Z11printStringPKc>
    80002d54:	00000613          	li	a2,0
    80002d58:	00a00593          	li	a1,10
    80002d5c:	00048513          	mv	a0,s1
    80002d60:	00002097          	auipc	ra,0x2
    80002d64:	d64080e7          	jalr	-668(ra) # 80004ac4 <_Z8printIntiii>
    80002d68:	00005517          	auipc	a0,0x5
    80002d6c:	76850513          	addi	a0,a0,1896 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80002d70:	00002097          	auipc	ra,0x2
    80002d74:	ba4080e7          	jalr	-1116(ra) # 80004914 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002d78:	0014849b          	addiw	s1,s1,1
    80002d7c:	0ff4f493          	andi	s1,s1,255
    80002d80:	00c00793          	li	a5,12
    80002d84:	fc97f0e3          	bgeu	a5,s1,80002d44 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002d88:	00005517          	auipc	a0,0x5
    80002d8c:	53050513          	addi	a0,a0,1328 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80002d90:	00002097          	auipc	ra,0x2
    80002d94:	b84080e7          	jalr	-1148(ra) # 80004914 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002d98:	00500313          	li	t1,5
    thread_dispatch();
    80002d9c:	ffffe097          	auipc	ra,0xffffe
    80002da0:	590080e7          	jalr	1424(ra) # 8000132c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002da4:	01000513          	li	a0,16
    80002da8:	00000097          	auipc	ra,0x0
    80002dac:	be8080e7          	jalr	-1048(ra) # 80002990 <_ZL9fibonaccim>
    80002db0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002db4:	00005517          	auipc	a0,0x5
    80002db8:	51450513          	addi	a0,a0,1300 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80002dbc:	00002097          	auipc	ra,0x2
    80002dc0:	b58080e7          	jalr	-1192(ra) # 80004914 <_Z11printStringPKc>
    80002dc4:	00000613          	li	a2,0
    80002dc8:	00a00593          	li	a1,10
    80002dcc:	0009051b          	sext.w	a0,s2
    80002dd0:	00002097          	auipc	ra,0x2
    80002dd4:	cf4080e7          	jalr	-780(ra) # 80004ac4 <_Z8printIntiii>
    80002dd8:	00005517          	auipc	a0,0x5
    80002ddc:	6f850513          	addi	a0,a0,1784 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80002de0:	00002097          	auipc	ra,0x2
    80002de4:	b34080e7          	jalr	-1228(ra) # 80004914 <_Z11printStringPKc>
    80002de8:	0400006f          	j	80002e28 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002dec:	00005517          	auipc	a0,0x5
    80002df0:	4c450513          	addi	a0,a0,1220 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80002df4:	00002097          	auipc	ra,0x2
    80002df8:	b20080e7          	jalr	-1248(ra) # 80004914 <_Z11printStringPKc>
    80002dfc:	00000613          	li	a2,0
    80002e00:	00a00593          	li	a1,10
    80002e04:	00048513          	mv	a0,s1
    80002e08:	00002097          	auipc	ra,0x2
    80002e0c:	cbc080e7          	jalr	-836(ra) # 80004ac4 <_Z8printIntiii>
    80002e10:	00005517          	auipc	a0,0x5
    80002e14:	6c050513          	addi	a0,a0,1728 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80002e18:	00002097          	auipc	ra,0x2
    80002e1c:	afc080e7          	jalr	-1284(ra) # 80004914 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002e20:	0014849b          	addiw	s1,s1,1
    80002e24:	0ff4f493          	andi	s1,s1,255
    80002e28:	00f00793          	li	a5,15
    80002e2c:	fc97f0e3          	bgeu	a5,s1,80002dec <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002e30:	00005517          	auipc	a0,0x5
    80002e34:	4a850513          	addi	a0,a0,1192 # 800082d8 <CONSOLE_STATUS+0x2c8>
    80002e38:	00002097          	auipc	ra,0x2
    80002e3c:	adc080e7          	jalr	-1316(ra) # 80004914 <_Z11printStringPKc>
    finishedD = true;
    80002e40:	00100793          	li	a5,1
    80002e44:	00007717          	auipc	a4,0x7
    80002e48:	60f707a3          	sb	a5,1551(a4) # 8000a453 <_ZL9finishedD>
    thread_dispatch();
    80002e4c:	ffffe097          	auipc	ra,0xffffe
    80002e50:	4e0080e7          	jalr	1248(ra) # 8000132c <_Z15thread_dispatchv>
}
    80002e54:	01813083          	ld	ra,24(sp)
    80002e58:	01013403          	ld	s0,16(sp)
    80002e5c:	00813483          	ld	s1,8(sp)
    80002e60:	00013903          	ld	s2,0(sp)
    80002e64:	02010113          	addi	sp,sp,32
    80002e68:	00008067          	ret

0000000080002e6c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002e6c:	fc010113          	addi	sp,sp,-64
    80002e70:	02113c23          	sd	ra,56(sp)
    80002e74:	02813823          	sd	s0,48(sp)
    80002e78:	02913423          	sd	s1,40(sp)
    80002e7c:	03213023          	sd	s2,32(sp)
    80002e80:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002e84:	02000513          	li	a0,32
    80002e88:	ffffe097          	auipc	ra,0xffffe
    80002e8c:	698080e7          	jalr	1688(ra) # 80001520 <_Znwm>
    80002e90:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002e94:	fffff097          	auipc	ra,0xfffff
    80002e98:	bd8080e7          	jalr	-1064(ra) # 80001a6c <_ZN6ThreadC1Ev>
    80002e9c:	00007797          	auipc	a5,0x7
    80002ea0:	37478793          	addi	a5,a5,884 # 8000a210 <_ZTV7WorkerA+0x10>
    80002ea4:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002ea8:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002eac:	00005517          	auipc	a0,0x5
    80002eb0:	43c50513          	addi	a0,a0,1084 # 800082e8 <CONSOLE_STATUS+0x2d8>
    80002eb4:	00002097          	auipc	ra,0x2
    80002eb8:	a60080e7          	jalr	-1440(ra) # 80004914 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002ebc:	02000513          	li	a0,32
    80002ec0:	ffffe097          	auipc	ra,0xffffe
    80002ec4:	660080e7          	jalr	1632(ra) # 80001520 <_Znwm>
    80002ec8:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002ecc:	fffff097          	auipc	ra,0xfffff
    80002ed0:	ba0080e7          	jalr	-1120(ra) # 80001a6c <_ZN6ThreadC1Ev>
    80002ed4:	00007797          	auipc	a5,0x7
    80002ed8:	36478793          	addi	a5,a5,868 # 8000a238 <_ZTV7WorkerB+0x10>
    80002edc:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002ee0:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002ee4:	00005517          	auipc	a0,0x5
    80002ee8:	41c50513          	addi	a0,a0,1052 # 80008300 <CONSOLE_STATUS+0x2f0>
    80002eec:	00002097          	auipc	ra,0x2
    80002ef0:	a28080e7          	jalr	-1496(ra) # 80004914 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002ef4:	02000513          	li	a0,32
    80002ef8:	ffffe097          	auipc	ra,0xffffe
    80002efc:	628080e7          	jalr	1576(ra) # 80001520 <_Znwm>
    80002f00:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002f04:	fffff097          	auipc	ra,0xfffff
    80002f08:	b68080e7          	jalr	-1176(ra) # 80001a6c <_ZN6ThreadC1Ev>
    80002f0c:	00007797          	auipc	a5,0x7
    80002f10:	35478793          	addi	a5,a5,852 # 8000a260 <_ZTV7WorkerC+0x10>
    80002f14:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002f18:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002f1c:	00005517          	auipc	a0,0x5
    80002f20:	3fc50513          	addi	a0,a0,1020 # 80008318 <CONSOLE_STATUS+0x308>
    80002f24:	00002097          	auipc	ra,0x2
    80002f28:	9f0080e7          	jalr	-1552(ra) # 80004914 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002f2c:	02000513          	li	a0,32
    80002f30:	ffffe097          	auipc	ra,0xffffe
    80002f34:	5f0080e7          	jalr	1520(ra) # 80001520 <_Znwm>
    80002f38:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002f3c:	fffff097          	auipc	ra,0xfffff
    80002f40:	b30080e7          	jalr	-1232(ra) # 80001a6c <_ZN6ThreadC1Ev>
    80002f44:	00007797          	auipc	a5,0x7
    80002f48:	34478793          	addi	a5,a5,836 # 8000a288 <_ZTV7WorkerD+0x10>
    80002f4c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002f50:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002f54:	00005517          	auipc	a0,0x5
    80002f58:	3dc50513          	addi	a0,a0,988 # 80008330 <CONSOLE_STATUS+0x320>
    80002f5c:	00002097          	auipc	ra,0x2
    80002f60:	9b8080e7          	jalr	-1608(ra) # 80004914 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002f64:	00000493          	li	s1,0
    80002f68:	00300793          	li	a5,3
    80002f6c:	0297c663          	blt	a5,s1,80002f98 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002f70:	00349793          	slli	a5,s1,0x3
    80002f74:	fe040713          	addi	a4,s0,-32
    80002f78:	00f707b3          	add	a5,a4,a5
    80002f7c:	fe07b503          	ld	a0,-32(a5)
    80002f80:	fffff097          	auipc	ra,0xfffff
    80002f84:	a8c080e7          	jalr	-1396(ra) # 80001a0c <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002f88:	0014849b          	addiw	s1,s1,1
    80002f8c:	fddff06f          	j	80002f68 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002f90:	fffff097          	auipc	ra,0xfffff
    80002f94:	a98080e7          	jalr	-1384(ra) # 80001a28 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002f98:	00007797          	auipc	a5,0x7
    80002f9c:	4b87c783          	lbu	a5,1208(a5) # 8000a450 <_ZL9finishedA>
    80002fa0:	fe0788e3          	beqz	a5,80002f90 <_Z20Threads_CPP_API_testv+0x124>
    80002fa4:	00007797          	auipc	a5,0x7
    80002fa8:	4ad7c783          	lbu	a5,1197(a5) # 8000a451 <_ZL9finishedB>
    80002fac:	fe0782e3          	beqz	a5,80002f90 <_Z20Threads_CPP_API_testv+0x124>
    80002fb0:	00007797          	auipc	a5,0x7
    80002fb4:	4a27c783          	lbu	a5,1186(a5) # 8000a452 <_ZL9finishedC>
    80002fb8:	fc078ce3          	beqz	a5,80002f90 <_Z20Threads_CPP_API_testv+0x124>
    80002fbc:	00007797          	auipc	a5,0x7
    80002fc0:	4977c783          	lbu	a5,1175(a5) # 8000a453 <_ZL9finishedD>
    80002fc4:	fc0786e3          	beqz	a5,80002f90 <_Z20Threads_CPP_API_testv+0x124>
    80002fc8:	fc040493          	addi	s1,s0,-64
    80002fcc:	0080006f          	j	80002fd4 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002fd0:	00848493          	addi	s1,s1,8
    80002fd4:	fe040793          	addi	a5,s0,-32
    80002fd8:	08f48663          	beq	s1,a5,80003064 <_Z20Threads_CPP_API_testv+0x1f8>
    80002fdc:	0004b503          	ld	a0,0(s1)
    80002fe0:	fe0508e3          	beqz	a0,80002fd0 <_Z20Threads_CPP_API_testv+0x164>
    80002fe4:	00053783          	ld	a5,0(a0)
    80002fe8:	0087b783          	ld	a5,8(a5)
    80002fec:	000780e7          	jalr	a5
    80002ff0:	fe1ff06f          	j	80002fd0 <_Z20Threads_CPP_API_testv+0x164>
    80002ff4:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002ff8:	00048513          	mv	a0,s1
    80002ffc:	ffffe097          	auipc	ra,0xffffe
    80003000:	574080e7          	jalr	1396(ra) # 80001570 <_ZdlPv>
    80003004:	00090513          	mv	a0,s2
    80003008:	00008097          	auipc	ra,0x8
    8000300c:	550080e7          	jalr	1360(ra) # 8000b558 <_Unwind_Resume>
    80003010:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003014:	00048513          	mv	a0,s1
    80003018:	ffffe097          	auipc	ra,0xffffe
    8000301c:	558080e7          	jalr	1368(ra) # 80001570 <_ZdlPv>
    80003020:	00090513          	mv	a0,s2
    80003024:	00008097          	auipc	ra,0x8
    80003028:	534080e7          	jalr	1332(ra) # 8000b558 <_Unwind_Resume>
    8000302c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80003030:	00048513          	mv	a0,s1
    80003034:	ffffe097          	auipc	ra,0xffffe
    80003038:	53c080e7          	jalr	1340(ra) # 80001570 <_ZdlPv>
    8000303c:	00090513          	mv	a0,s2
    80003040:	00008097          	auipc	ra,0x8
    80003044:	518080e7          	jalr	1304(ra) # 8000b558 <_Unwind_Resume>
    80003048:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    8000304c:	00048513          	mv	a0,s1
    80003050:	ffffe097          	auipc	ra,0xffffe
    80003054:	520080e7          	jalr	1312(ra) # 80001570 <_ZdlPv>
    80003058:	00090513          	mv	a0,s2
    8000305c:	00008097          	auipc	ra,0x8
    80003060:	4fc080e7          	jalr	1276(ra) # 8000b558 <_Unwind_Resume>
}
    80003064:	03813083          	ld	ra,56(sp)
    80003068:	03013403          	ld	s0,48(sp)
    8000306c:	02813483          	ld	s1,40(sp)
    80003070:	02013903          	ld	s2,32(sp)
    80003074:	04010113          	addi	sp,sp,64
    80003078:	00008067          	ret

000000008000307c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    8000307c:	ff010113          	addi	sp,sp,-16
    80003080:	00113423          	sd	ra,8(sp)
    80003084:	00813023          	sd	s0,0(sp)
    80003088:	01010413          	addi	s0,sp,16
    8000308c:	00007797          	auipc	a5,0x7
    80003090:	18478793          	addi	a5,a5,388 # 8000a210 <_ZTV7WorkerA+0x10>
    80003094:	00f53023          	sd	a5,0(a0)
    80003098:	fffff097          	auipc	ra,0xfffff
    8000309c:	818080e7          	jalr	-2024(ra) # 800018b0 <_ZN6ThreadD1Ev>
    800030a0:	00813083          	ld	ra,8(sp)
    800030a4:	00013403          	ld	s0,0(sp)
    800030a8:	01010113          	addi	sp,sp,16
    800030ac:	00008067          	ret

00000000800030b0 <_ZN7WorkerAD0Ev>:
    800030b0:	fe010113          	addi	sp,sp,-32
    800030b4:	00113c23          	sd	ra,24(sp)
    800030b8:	00813823          	sd	s0,16(sp)
    800030bc:	00913423          	sd	s1,8(sp)
    800030c0:	02010413          	addi	s0,sp,32
    800030c4:	00050493          	mv	s1,a0
    800030c8:	00007797          	auipc	a5,0x7
    800030cc:	14878793          	addi	a5,a5,328 # 8000a210 <_ZTV7WorkerA+0x10>
    800030d0:	00f53023          	sd	a5,0(a0)
    800030d4:	ffffe097          	auipc	ra,0xffffe
    800030d8:	7dc080e7          	jalr	2012(ra) # 800018b0 <_ZN6ThreadD1Ev>
    800030dc:	00048513          	mv	a0,s1
    800030e0:	ffffe097          	auipc	ra,0xffffe
    800030e4:	490080e7          	jalr	1168(ra) # 80001570 <_ZdlPv>
    800030e8:	01813083          	ld	ra,24(sp)
    800030ec:	01013403          	ld	s0,16(sp)
    800030f0:	00813483          	ld	s1,8(sp)
    800030f4:	02010113          	addi	sp,sp,32
    800030f8:	00008067          	ret

00000000800030fc <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    800030fc:	ff010113          	addi	sp,sp,-16
    80003100:	00113423          	sd	ra,8(sp)
    80003104:	00813023          	sd	s0,0(sp)
    80003108:	01010413          	addi	s0,sp,16
    8000310c:	00007797          	auipc	a5,0x7
    80003110:	12c78793          	addi	a5,a5,300 # 8000a238 <_ZTV7WorkerB+0x10>
    80003114:	00f53023          	sd	a5,0(a0)
    80003118:	ffffe097          	auipc	ra,0xffffe
    8000311c:	798080e7          	jalr	1944(ra) # 800018b0 <_ZN6ThreadD1Ev>
    80003120:	00813083          	ld	ra,8(sp)
    80003124:	00013403          	ld	s0,0(sp)
    80003128:	01010113          	addi	sp,sp,16
    8000312c:	00008067          	ret

0000000080003130 <_ZN7WorkerBD0Ev>:
    80003130:	fe010113          	addi	sp,sp,-32
    80003134:	00113c23          	sd	ra,24(sp)
    80003138:	00813823          	sd	s0,16(sp)
    8000313c:	00913423          	sd	s1,8(sp)
    80003140:	02010413          	addi	s0,sp,32
    80003144:	00050493          	mv	s1,a0
    80003148:	00007797          	auipc	a5,0x7
    8000314c:	0f078793          	addi	a5,a5,240 # 8000a238 <_ZTV7WorkerB+0x10>
    80003150:	00f53023          	sd	a5,0(a0)
    80003154:	ffffe097          	auipc	ra,0xffffe
    80003158:	75c080e7          	jalr	1884(ra) # 800018b0 <_ZN6ThreadD1Ev>
    8000315c:	00048513          	mv	a0,s1
    80003160:	ffffe097          	auipc	ra,0xffffe
    80003164:	410080e7          	jalr	1040(ra) # 80001570 <_ZdlPv>
    80003168:	01813083          	ld	ra,24(sp)
    8000316c:	01013403          	ld	s0,16(sp)
    80003170:	00813483          	ld	s1,8(sp)
    80003174:	02010113          	addi	sp,sp,32
    80003178:	00008067          	ret

000000008000317c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    8000317c:	ff010113          	addi	sp,sp,-16
    80003180:	00113423          	sd	ra,8(sp)
    80003184:	00813023          	sd	s0,0(sp)
    80003188:	01010413          	addi	s0,sp,16
    8000318c:	00007797          	auipc	a5,0x7
    80003190:	0d478793          	addi	a5,a5,212 # 8000a260 <_ZTV7WorkerC+0x10>
    80003194:	00f53023          	sd	a5,0(a0)
    80003198:	ffffe097          	auipc	ra,0xffffe
    8000319c:	718080e7          	jalr	1816(ra) # 800018b0 <_ZN6ThreadD1Ev>
    800031a0:	00813083          	ld	ra,8(sp)
    800031a4:	00013403          	ld	s0,0(sp)
    800031a8:	01010113          	addi	sp,sp,16
    800031ac:	00008067          	ret

00000000800031b0 <_ZN7WorkerCD0Ev>:
    800031b0:	fe010113          	addi	sp,sp,-32
    800031b4:	00113c23          	sd	ra,24(sp)
    800031b8:	00813823          	sd	s0,16(sp)
    800031bc:	00913423          	sd	s1,8(sp)
    800031c0:	02010413          	addi	s0,sp,32
    800031c4:	00050493          	mv	s1,a0
    800031c8:	00007797          	auipc	a5,0x7
    800031cc:	09878793          	addi	a5,a5,152 # 8000a260 <_ZTV7WorkerC+0x10>
    800031d0:	00f53023          	sd	a5,0(a0)
    800031d4:	ffffe097          	auipc	ra,0xffffe
    800031d8:	6dc080e7          	jalr	1756(ra) # 800018b0 <_ZN6ThreadD1Ev>
    800031dc:	00048513          	mv	a0,s1
    800031e0:	ffffe097          	auipc	ra,0xffffe
    800031e4:	390080e7          	jalr	912(ra) # 80001570 <_ZdlPv>
    800031e8:	01813083          	ld	ra,24(sp)
    800031ec:	01013403          	ld	s0,16(sp)
    800031f0:	00813483          	ld	s1,8(sp)
    800031f4:	02010113          	addi	sp,sp,32
    800031f8:	00008067          	ret

00000000800031fc <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    800031fc:	ff010113          	addi	sp,sp,-16
    80003200:	00113423          	sd	ra,8(sp)
    80003204:	00813023          	sd	s0,0(sp)
    80003208:	01010413          	addi	s0,sp,16
    8000320c:	00007797          	auipc	a5,0x7
    80003210:	07c78793          	addi	a5,a5,124 # 8000a288 <_ZTV7WorkerD+0x10>
    80003214:	00f53023          	sd	a5,0(a0)
    80003218:	ffffe097          	auipc	ra,0xffffe
    8000321c:	698080e7          	jalr	1688(ra) # 800018b0 <_ZN6ThreadD1Ev>
    80003220:	00813083          	ld	ra,8(sp)
    80003224:	00013403          	ld	s0,0(sp)
    80003228:	01010113          	addi	sp,sp,16
    8000322c:	00008067          	ret

0000000080003230 <_ZN7WorkerDD0Ev>:
    80003230:	fe010113          	addi	sp,sp,-32
    80003234:	00113c23          	sd	ra,24(sp)
    80003238:	00813823          	sd	s0,16(sp)
    8000323c:	00913423          	sd	s1,8(sp)
    80003240:	02010413          	addi	s0,sp,32
    80003244:	00050493          	mv	s1,a0
    80003248:	00007797          	auipc	a5,0x7
    8000324c:	04078793          	addi	a5,a5,64 # 8000a288 <_ZTV7WorkerD+0x10>
    80003250:	00f53023          	sd	a5,0(a0)
    80003254:	ffffe097          	auipc	ra,0xffffe
    80003258:	65c080e7          	jalr	1628(ra) # 800018b0 <_ZN6ThreadD1Ev>
    8000325c:	00048513          	mv	a0,s1
    80003260:	ffffe097          	auipc	ra,0xffffe
    80003264:	310080e7          	jalr	784(ra) # 80001570 <_ZdlPv>
    80003268:	01813083          	ld	ra,24(sp)
    8000326c:	01013403          	ld	s0,16(sp)
    80003270:	00813483          	ld	s1,8(sp)
    80003274:	02010113          	addi	sp,sp,32
    80003278:	00008067          	ret

000000008000327c <_ZN7WorkerA3runEv>:
    void run() override {
    8000327c:	ff010113          	addi	sp,sp,-16
    80003280:	00113423          	sd	ra,8(sp)
    80003284:	00813023          	sd	s0,0(sp)
    80003288:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000328c:	00000593          	li	a1,0
    80003290:	fffff097          	auipc	ra,0xfffff
    80003294:	774080e7          	jalr	1908(ra) # 80002a04 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003298:	00813083          	ld	ra,8(sp)
    8000329c:	00013403          	ld	s0,0(sp)
    800032a0:	01010113          	addi	sp,sp,16
    800032a4:	00008067          	ret

00000000800032a8 <_ZN7WorkerB3runEv>:
    void run() override {
    800032a8:	ff010113          	addi	sp,sp,-16
    800032ac:	00113423          	sd	ra,8(sp)
    800032b0:	00813023          	sd	s0,0(sp)
    800032b4:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800032b8:	00000593          	li	a1,0
    800032bc:	00000097          	auipc	ra,0x0
    800032c0:	814080e7          	jalr	-2028(ra) # 80002ad0 <_ZN7WorkerB11workerBodyBEPv>
    }
    800032c4:	00813083          	ld	ra,8(sp)
    800032c8:	00013403          	ld	s0,0(sp)
    800032cc:	01010113          	addi	sp,sp,16
    800032d0:	00008067          	ret

00000000800032d4 <_ZN7WorkerC3runEv>:
    void run() override {
    800032d4:	ff010113          	addi	sp,sp,-16
    800032d8:	00113423          	sd	ra,8(sp)
    800032dc:	00813023          	sd	s0,0(sp)
    800032e0:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    800032e4:	00000593          	li	a1,0
    800032e8:	00000097          	auipc	ra,0x0
    800032ec:	8bc080e7          	jalr	-1860(ra) # 80002ba4 <_ZN7WorkerC11workerBodyCEPv>
    }
    800032f0:	00813083          	ld	ra,8(sp)
    800032f4:	00013403          	ld	s0,0(sp)
    800032f8:	01010113          	addi	sp,sp,16
    800032fc:	00008067          	ret

0000000080003300 <_ZN7WorkerD3runEv>:
    void run() override {
    80003300:	ff010113          	addi	sp,sp,-16
    80003304:	00113423          	sd	ra,8(sp)
    80003308:	00813023          	sd	s0,0(sp)
    8000330c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003310:	00000593          	li	a1,0
    80003314:	00000097          	auipc	ra,0x0
    80003318:	a10080e7          	jalr	-1520(ra) # 80002d24 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000331c:	00813083          	ld	ra,8(sp)
    80003320:	00013403          	ld	s0,0(sp)
    80003324:	01010113          	addi	sp,sp,16
    80003328:	00008067          	ret

000000008000332c <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    8000332c:	f8010113          	addi	sp,sp,-128
    80003330:	06113c23          	sd	ra,120(sp)
    80003334:	06813823          	sd	s0,112(sp)
    80003338:	06913423          	sd	s1,104(sp)
    8000333c:	07213023          	sd	s2,96(sp)
    80003340:	05313c23          	sd	s3,88(sp)
    80003344:	05413823          	sd	s4,80(sp)
    80003348:	05513423          	sd	s5,72(sp)
    8000334c:	05613023          	sd	s6,64(sp)
    80003350:	03713c23          	sd	s7,56(sp)
    80003354:	03813823          	sd	s8,48(sp)
    80003358:	03913423          	sd	s9,40(sp)
    8000335c:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003360:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003364:	00005517          	auipc	a0,0x5
    80003368:	e0450513          	addi	a0,a0,-508 # 80008168 <CONSOLE_STATUS+0x158>
    8000336c:	00001097          	auipc	ra,0x1
    80003370:	5a8080e7          	jalr	1448(ra) # 80004914 <_Z11printStringPKc>
    getString(input, 30);
    80003374:	01e00593          	li	a1,30
    80003378:	f8040493          	addi	s1,s0,-128
    8000337c:	00048513          	mv	a0,s1
    80003380:	00001097          	auipc	ra,0x1
    80003384:	61c080e7          	jalr	1564(ra) # 8000499c <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003388:	00048513          	mv	a0,s1
    8000338c:	00001097          	auipc	ra,0x1
    80003390:	6e8080e7          	jalr	1768(ra) # 80004a74 <_Z11stringToIntPKc>
    80003394:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003398:	00005517          	auipc	a0,0x5
    8000339c:	df050513          	addi	a0,a0,-528 # 80008188 <CONSOLE_STATUS+0x178>
    800033a0:	00001097          	auipc	ra,0x1
    800033a4:	574080e7          	jalr	1396(ra) # 80004914 <_Z11printStringPKc>
    getString(input, 30);
    800033a8:	01e00593          	li	a1,30
    800033ac:	00048513          	mv	a0,s1
    800033b0:	00001097          	auipc	ra,0x1
    800033b4:	5ec080e7          	jalr	1516(ra) # 8000499c <_Z9getStringPci>
    n = stringToInt(input);
    800033b8:	00048513          	mv	a0,s1
    800033bc:	00001097          	auipc	ra,0x1
    800033c0:	6b8080e7          	jalr	1720(ra) # 80004a74 <_Z11stringToIntPKc>
    800033c4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    800033c8:	00005517          	auipc	a0,0x5
    800033cc:	de050513          	addi	a0,a0,-544 # 800081a8 <CONSOLE_STATUS+0x198>
    800033d0:	00001097          	auipc	ra,0x1
    800033d4:	544080e7          	jalr	1348(ra) # 80004914 <_Z11printStringPKc>
    printInt(threadNum);
    800033d8:	00000613          	li	a2,0
    800033dc:	00a00593          	li	a1,10
    800033e0:	00098513          	mv	a0,s3
    800033e4:	00001097          	auipc	ra,0x1
    800033e8:	6e0080e7          	jalr	1760(ra) # 80004ac4 <_Z8printIntiii>
    printString(" i velicina bafera ");
    800033ec:	00005517          	auipc	a0,0x5
    800033f0:	dd450513          	addi	a0,a0,-556 # 800081c0 <CONSOLE_STATUS+0x1b0>
    800033f4:	00001097          	auipc	ra,0x1
    800033f8:	520080e7          	jalr	1312(ra) # 80004914 <_Z11printStringPKc>
    printInt(n);
    800033fc:	00000613          	li	a2,0
    80003400:	00a00593          	li	a1,10
    80003404:	00048513          	mv	a0,s1
    80003408:	00001097          	auipc	ra,0x1
    8000340c:	6bc080e7          	jalr	1724(ra) # 80004ac4 <_Z8printIntiii>
    printString(".\n");
    80003410:	00005517          	auipc	a0,0x5
    80003414:	dc850513          	addi	a0,a0,-568 # 800081d8 <CONSOLE_STATUS+0x1c8>
    80003418:	00001097          	auipc	ra,0x1
    8000341c:	4fc080e7          	jalr	1276(ra) # 80004914 <_Z11printStringPKc>
    if (threadNum > n) {
    80003420:	0334c463          	blt	s1,s3,80003448 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003424:	03305c63          	blez	s3,8000345c <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003428:	03800513          	li	a0,56
    8000342c:	ffffe097          	auipc	ra,0xffffe
    80003430:	0f4080e7          	jalr	244(ra) # 80001520 <_Znwm>
    80003434:	00050a93          	mv	s5,a0
    80003438:	00048593          	mv	a1,s1
    8000343c:	00001097          	auipc	ra,0x1
    80003440:	7a8080e7          	jalr	1960(ra) # 80004be4 <_ZN9BufferCPPC1Ei>
    80003444:	0300006f          	j	80003474 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003448:	00005517          	auipc	a0,0x5
    8000344c:	d9850513          	addi	a0,a0,-616 # 800081e0 <CONSOLE_STATUS+0x1d0>
    80003450:	00001097          	auipc	ra,0x1
    80003454:	4c4080e7          	jalr	1220(ra) # 80004914 <_Z11printStringPKc>
        return;
    80003458:	0140006f          	j	8000346c <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    8000345c:	00005517          	auipc	a0,0x5
    80003460:	dc450513          	addi	a0,a0,-572 # 80008220 <CONSOLE_STATUS+0x210>
    80003464:	00001097          	auipc	ra,0x1
    80003468:	4b0080e7          	jalr	1200(ra) # 80004914 <_Z11printStringPKc>
        return;
    8000346c:	000c0113          	mv	sp,s8
    80003470:	2140006f          	j	80003684 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003474:	01000513          	li	a0,16
    80003478:	ffffe097          	auipc	ra,0xffffe
    8000347c:	0a8080e7          	jalr	168(ra) # 80001520 <_Znwm>
    80003480:	00050913          	mv	s2,a0
    80003484:	00000593          	li	a1,0
    80003488:	ffffe097          	auipc	ra,0xffffe
    8000348c:	630080e7          	jalr	1584(ra) # 80001ab8 <_ZN9SemaphoreC1Ej>
    80003490:	00007797          	auipc	a5,0x7
    80003494:	fd27b823          	sd	s2,-48(a5) # 8000a460 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003498:	00399793          	slli	a5,s3,0x3
    8000349c:	00f78793          	addi	a5,a5,15
    800034a0:	ff07f793          	andi	a5,a5,-16
    800034a4:	40f10133          	sub	sp,sp,a5
    800034a8:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    800034ac:	0019871b          	addiw	a4,s3,1
    800034b0:	00171793          	slli	a5,a4,0x1
    800034b4:	00e787b3          	add	a5,a5,a4
    800034b8:	00379793          	slli	a5,a5,0x3
    800034bc:	00f78793          	addi	a5,a5,15
    800034c0:	ff07f793          	andi	a5,a5,-16
    800034c4:	40f10133          	sub	sp,sp,a5
    800034c8:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    800034cc:	00199493          	slli	s1,s3,0x1
    800034d0:	013484b3          	add	s1,s1,s3
    800034d4:	00349493          	slli	s1,s1,0x3
    800034d8:	009b04b3          	add	s1,s6,s1
    800034dc:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    800034e0:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    800034e4:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800034e8:	02800513          	li	a0,40
    800034ec:	ffffe097          	auipc	ra,0xffffe
    800034f0:	034080e7          	jalr	52(ra) # 80001520 <_Znwm>
    800034f4:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    800034f8:	ffffe097          	auipc	ra,0xffffe
    800034fc:	574080e7          	jalr	1396(ra) # 80001a6c <_ZN6ThreadC1Ev>
    80003500:	00007797          	auipc	a5,0x7
    80003504:	e0078793          	addi	a5,a5,-512 # 8000a300 <_ZTV8Consumer+0x10>
    80003508:	00fbb023          	sd	a5,0(s7)
    8000350c:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003510:	000b8513          	mv	a0,s7
    80003514:	ffffe097          	auipc	ra,0xffffe
    80003518:	4f8080e7          	jalr	1272(ra) # 80001a0c <_ZN6Thread5startEv>
    threadData[0].id = 0;
    8000351c:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003520:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003524:	00007797          	auipc	a5,0x7
    80003528:	f3c7b783          	ld	a5,-196(a5) # 8000a460 <_ZL10waitForAll>
    8000352c:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003530:	02800513          	li	a0,40
    80003534:	ffffe097          	auipc	ra,0xffffe
    80003538:	fec080e7          	jalr	-20(ra) # 80001520 <_Znwm>
    8000353c:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	52c080e7          	jalr	1324(ra) # 80001a6c <_ZN6ThreadC1Ev>
    80003548:	00007797          	auipc	a5,0x7
    8000354c:	d6878793          	addi	a5,a5,-664 # 8000a2b0 <_ZTV16ProducerKeyborad+0x10>
    80003550:	00f4b023          	sd	a5,0(s1)
    80003554:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003558:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    8000355c:	00048513          	mv	a0,s1
    80003560:	ffffe097          	auipc	ra,0xffffe
    80003564:	4ac080e7          	jalr	1196(ra) # 80001a0c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003568:	00100913          	li	s2,1
    8000356c:	0300006f          	j	8000359c <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003570:	00007797          	auipc	a5,0x7
    80003574:	d6878793          	addi	a5,a5,-664 # 8000a2d8 <_ZTV8Producer+0x10>
    80003578:	00fcb023          	sd	a5,0(s9)
    8000357c:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003580:	00391793          	slli	a5,s2,0x3
    80003584:	00fa07b3          	add	a5,s4,a5
    80003588:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    8000358c:	000c8513          	mv	a0,s9
    80003590:	ffffe097          	auipc	ra,0xffffe
    80003594:	47c080e7          	jalr	1148(ra) # 80001a0c <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003598:	0019091b          	addiw	s2,s2,1
    8000359c:	05395263          	bge	s2,s3,800035e0 <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    800035a0:	00191493          	slli	s1,s2,0x1
    800035a4:	012484b3          	add	s1,s1,s2
    800035a8:	00349493          	slli	s1,s1,0x3
    800035ac:	009b04b3          	add	s1,s6,s1
    800035b0:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    800035b4:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    800035b8:	00007797          	auipc	a5,0x7
    800035bc:	ea87b783          	ld	a5,-344(a5) # 8000a460 <_ZL10waitForAll>
    800035c0:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    800035c4:	02800513          	li	a0,40
    800035c8:	ffffe097          	auipc	ra,0xffffe
    800035cc:	f58080e7          	jalr	-168(ra) # 80001520 <_Znwm>
    800035d0:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    800035d4:	ffffe097          	auipc	ra,0xffffe
    800035d8:	498080e7          	jalr	1176(ra) # 80001a6c <_ZN6ThreadC1Ev>
    800035dc:	f95ff06f          	j	80003570 <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    800035e0:	ffffe097          	auipc	ra,0xffffe
    800035e4:	448080e7          	jalr	1096(ra) # 80001a28 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800035e8:	00000493          	li	s1,0
    800035ec:	0099ce63          	blt	s3,s1,80003608 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    800035f0:	00007517          	auipc	a0,0x7
    800035f4:	e7053503          	ld	a0,-400(a0) # 8000a460 <_ZL10waitForAll>
    800035f8:	ffffe097          	auipc	ra,0xffffe
    800035fc:	4f8080e7          	jalr	1272(ra) # 80001af0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003600:	0014849b          	addiw	s1,s1,1
    80003604:	fe9ff06f          	j	800035ec <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003608:	00007517          	auipc	a0,0x7
    8000360c:	e5853503          	ld	a0,-424(a0) # 8000a460 <_ZL10waitForAll>
    80003610:	00050863          	beqz	a0,80003620 <_Z20testConsumerProducerv+0x2f4>
    80003614:	00053783          	ld	a5,0(a0)
    80003618:	0087b783          	ld	a5,8(a5)
    8000361c:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003620:	00000493          	li	s1,0
    80003624:	0080006f          	j	8000362c <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003628:	0014849b          	addiw	s1,s1,1
    8000362c:	0334d263          	bge	s1,s3,80003650 <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003630:	00349793          	slli	a5,s1,0x3
    80003634:	00fa07b3          	add	a5,s4,a5
    80003638:	0007b503          	ld	a0,0(a5)
    8000363c:	fe0506e3          	beqz	a0,80003628 <_Z20testConsumerProducerv+0x2fc>
    80003640:	00053783          	ld	a5,0(a0)
    80003644:	0087b783          	ld	a5,8(a5)
    80003648:	000780e7          	jalr	a5
    8000364c:	fddff06f          	j	80003628 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003650:	000b8a63          	beqz	s7,80003664 <_Z20testConsumerProducerv+0x338>
    80003654:	000bb783          	ld	a5,0(s7)
    80003658:	0087b783          	ld	a5,8(a5)
    8000365c:	000b8513          	mv	a0,s7
    80003660:	000780e7          	jalr	a5
    delete buffer;
    80003664:	000a8e63          	beqz	s5,80003680 <_Z20testConsumerProducerv+0x354>
    80003668:	000a8513          	mv	a0,s5
    8000366c:	00002097          	auipc	ra,0x2
    80003670:	870080e7          	jalr	-1936(ra) # 80004edc <_ZN9BufferCPPD1Ev>
    80003674:	000a8513          	mv	a0,s5
    80003678:	ffffe097          	auipc	ra,0xffffe
    8000367c:	ef8080e7          	jalr	-264(ra) # 80001570 <_ZdlPv>
    80003680:	000c0113          	mv	sp,s8
}
    80003684:	f8040113          	addi	sp,s0,-128
    80003688:	07813083          	ld	ra,120(sp)
    8000368c:	07013403          	ld	s0,112(sp)
    80003690:	06813483          	ld	s1,104(sp)
    80003694:	06013903          	ld	s2,96(sp)
    80003698:	05813983          	ld	s3,88(sp)
    8000369c:	05013a03          	ld	s4,80(sp)
    800036a0:	04813a83          	ld	s5,72(sp)
    800036a4:	04013b03          	ld	s6,64(sp)
    800036a8:	03813b83          	ld	s7,56(sp)
    800036ac:	03013c03          	ld	s8,48(sp)
    800036b0:	02813c83          	ld	s9,40(sp)
    800036b4:	08010113          	addi	sp,sp,128
    800036b8:	00008067          	ret
    800036bc:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800036c0:	000a8513          	mv	a0,s5
    800036c4:	ffffe097          	auipc	ra,0xffffe
    800036c8:	eac080e7          	jalr	-340(ra) # 80001570 <_ZdlPv>
    800036cc:	00048513          	mv	a0,s1
    800036d0:	00008097          	auipc	ra,0x8
    800036d4:	e88080e7          	jalr	-376(ra) # 8000b558 <_Unwind_Resume>
    800036d8:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800036dc:	00090513          	mv	a0,s2
    800036e0:	ffffe097          	auipc	ra,0xffffe
    800036e4:	e90080e7          	jalr	-368(ra) # 80001570 <_ZdlPv>
    800036e8:	00048513          	mv	a0,s1
    800036ec:	00008097          	auipc	ra,0x8
    800036f0:	e6c080e7          	jalr	-404(ra) # 8000b558 <_Unwind_Resume>
    800036f4:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800036f8:	000b8513          	mv	a0,s7
    800036fc:	ffffe097          	auipc	ra,0xffffe
    80003700:	e74080e7          	jalr	-396(ra) # 80001570 <_ZdlPv>
    80003704:	00048513          	mv	a0,s1
    80003708:	00008097          	auipc	ra,0x8
    8000370c:	e50080e7          	jalr	-432(ra) # 8000b558 <_Unwind_Resume>
    80003710:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003714:	00048513          	mv	a0,s1
    80003718:	ffffe097          	auipc	ra,0xffffe
    8000371c:	e58080e7          	jalr	-424(ra) # 80001570 <_ZdlPv>
    80003720:	00090513          	mv	a0,s2
    80003724:	00008097          	auipc	ra,0x8
    80003728:	e34080e7          	jalr	-460(ra) # 8000b558 <_Unwind_Resume>
    8000372c:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    80003730:	000c8513          	mv	a0,s9
    80003734:	ffffe097          	auipc	ra,0xffffe
    80003738:	e3c080e7          	jalr	-452(ra) # 80001570 <_ZdlPv>
    8000373c:	00048513          	mv	a0,s1
    80003740:	00008097          	auipc	ra,0x8
    80003744:	e18080e7          	jalr	-488(ra) # 8000b558 <_Unwind_Resume>

0000000080003748 <_ZN8Consumer3runEv>:
    void run() override {
    80003748:	fd010113          	addi	sp,sp,-48
    8000374c:	02113423          	sd	ra,40(sp)
    80003750:	02813023          	sd	s0,32(sp)
    80003754:	00913c23          	sd	s1,24(sp)
    80003758:	01213823          	sd	s2,16(sp)
    8000375c:	01313423          	sd	s3,8(sp)
    80003760:	03010413          	addi	s0,sp,48
    80003764:	00050913          	mv	s2,a0
        int i = 0;
    80003768:	00000993          	li	s3,0
    8000376c:	0100006f          	j	8000377c <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    80003770:	00a00513          	li	a0,10
    80003774:	ffffe097          	auipc	ra,0xffffe
    80003778:	428080e7          	jalr	1064(ra) # 80001b9c <_ZN7Console4putcEc>
        while (!threadEnd) {
    8000377c:	00007797          	auipc	a5,0x7
    80003780:	cdc7a783          	lw	a5,-804(a5) # 8000a458 <_ZL9threadEnd>
    80003784:	04079a63          	bnez	a5,800037d8 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80003788:	02093783          	ld	a5,32(s2)
    8000378c:	0087b503          	ld	a0,8(a5)
    80003790:	00001097          	auipc	ra,0x1
    80003794:	638080e7          	jalr	1592(ra) # 80004dc8 <_ZN9BufferCPP3getEv>
            i++;
    80003798:	0019849b          	addiw	s1,s3,1
    8000379c:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800037a0:	0ff57513          	andi	a0,a0,255
    800037a4:	ffffe097          	auipc	ra,0xffffe
    800037a8:	3f8080e7          	jalr	1016(ra) # 80001b9c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    800037ac:	05000793          	li	a5,80
    800037b0:	02f4e4bb          	remw	s1,s1,a5
    800037b4:	fc0494e3          	bnez	s1,8000377c <_ZN8Consumer3runEv+0x34>
    800037b8:	fb9ff06f          	j	80003770 <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800037bc:	02093783          	ld	a5,32(s2)
    800037c0:	0087b503          	ld	a0,8(a5)
    800037c4:	00001097          	auipc	ra,0x1
    800037c8:	604080e7          	jalr	1540(ra) # 80004dc8 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800037cc:	0ff57513          	andi	a0,a0,255
    800037d0:	ffffe097          	auipc	ra,0xffffe
    800037d4:	3cc080e7          	jalr	972(ra) # 80001b9c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800037d8:	02093783          	ld	a5,32(s2)
    800037dc:	0087b503          	ld	a0,8(a5)
    800037e0:	00001097          	auipc	ra,0x1
    800037e4:	674080e7          	jalr	1652(ra) # 80004e54 <_ZN9BufferCPP6getCntEv>
    800037e8:	fca04ae3          	bgtz	a0,800037bc <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800037ec:	02093783          	ld	a5,32(s2)
    800037f0:	0107b503          	ld	a0,16(a5)
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	328080e7          	jalr	808(ra) # 80001b1c <_ZN9Semaphore6signalEv>
    }
    800037fc:	02813083          	ld	ra,40(sp)
    80003800:	02013403          	ld	s0,32(sp)
    80003804:	01813483          	ld	s1,24(sp)
    80003808:	01013903          	ld	s2,16(sp)
    8000380c:	00813983          	ld	s3,8(sp)
    80003810:	03010113          	addi	sp,sp,48
    80003814:	00008067          	ret

0000000080003818 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80003818:	ff010113          	addi	sp,sp,-16
    8000381c:	00113423          	sd	ra,8(sp)
    80003820:	00813023          	sd	s0,0(sp)
    80003824:	01010413          	addi	s0,sp,16
    80003828:	00007797          	auipc	a5,0x7
    8000382c:	ad878793          	addi	a5,a5,-1320 # 8000a300 <_ZTV8Consumer+0x10>
    80003830:	00f53023          	sd	a5,0(a0)
    80003834:	ffffe097          	auipc	ra,0xffffe
    80003838:	07c080e7          	jalr	124(ra) # 800018b0 <_ZN6ThreadD1Ev>
    8000383c:	00813083          	ld	ra,8(sp)
    80003840:	00013403          	ld	s0,0(sp)
    80003844:	01010113          	addi	sp,sp,16
    80003848:	00008067          	ret

000000008000384c <_ZN8ConsumerD0Ev>:
    8000384c:	fe010113          	addi	sp,sp,-32
    80003850:	00113c23          	sd	ra,24(sp)
    80003854:	00813823          	sd	s0,16(sp)
    80003858:	00913423          	sd	s1,8(sp)
    8000385c:	02010413          	addi	s0,sp,32
    80003860:	00050493          	mv	s1,a0
    80003864:	00007797          	auipc	a5,0x7
    80003868:	a9c78793          	addi	a5,a5,-1380 # 8000a300 <_ZTV8Consumer+0x10>
    8000386c:	00f53023          	sd	a5,0(a0)
    80003870:	ffffe097          	auipc	ra,0xffffe
    80003874:	040080e7          	jalr	64(ra) # 800018b0 <_ZN6ThreadD1Ev>
    80003878:	00048513          	mv	a0,s1
    8000387c:	ffffe097          	auipc	ra,0xffffe
    80003880:	cf4080e7          	jalr	-780(ra) # 80001570 <_ZdlPv>
    80003884:	01813083          	ld	ra,24(sp)
    80003888:	01013403          	ld	s0,16(sp)
    8000388c:	00813483          	ld	s1,8(sp)
    80003890:	02010113          	addi	sp,sp,32
    80003894:	00008067          	ret

0000000080003898 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80003898:	ff010113          	addi	sp,sp,-16
    8000389c:	00113423          	sd	ra,8(sp)
    800038a0:	00813023          	sd	s0,0(sp)
    800038a4:	01010413          	addi	s0,sp,16
    800038a8:	00007797          	auipc	a5,0x7
    800038ac:	a0878793          	addi	a5,a5,-1528 # 8000a2b0 <_ZTV16ProducerKeyborad+0x10>
    800038b0:	00f53023          	sd	a5,0(a0)
    800038b4:	ffffe097          	auipc	ra,0xffffe
    800038b8:	ffc080e7          	jalr	-4(ra) # 800018b0 <_ZN6ThreadD1Ev>
    800038bc:	00813083          	ld	ra,8(sp)
    800038c0:	00013403          	ld	s0,0(sp)
    800038c4:	01010113          	addi	sp,sp,16
    800038c8:	00008067          	ret

00000000800038cc <_ZN16ProducerKeyboradD0Ev>:
    800038cc:	fe010113          	addi	sp,sp,-32
    800038d0:	00113c23          	sd	ra,24(sp)
    800038d4:	00813823          	sd	s0,16(sp)
    800038d8:	00913423          	sd	s1,8(sp)
    800038dc:	02010413          	addi	s0,sp,32
    800038e0:	00050493          	mv	s1,a0
    800038e4:	00007797          	auipc	a5,0x7
    800038e8:	9cc78793          	addi	a5,a5,-1588 # 8000a2b0 <_ZTV16ProducerKeyborad+0x10>
    800038ec:	00f53023          	sd	a5,0(a0)
    800038f0:	ffffe097          	auipc	ra,0xffffe
    800038f4:	fc0080e7          	jalr	-64(ra) # 800018b0 <_ZN6ThreadD1Ev>
    800038f8:	00048513          	mv	a0,s1
    800038fc:	ffffe097          	auipc	ra,0xffffe
    80003900:	c74080e7          	jalr	-908(ra) # 80001570 <_ZdlPv>
    80003904:	01813083          	ld	ra,24(sp)
    80003908:	01013403          	ld	s0,16(sp)
    8000390c:	00813483          	ld	s1,8(sp)
    80003910:	02010113          	addi	sp,sp,32
    80003914:	00008067          	ret

0000000080003918 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80003918:	ff010113          	addi	sp,sp,-16
    8000391c:	00113423          	sd	ra,8(sp)
    80003920:	00813023          	sd	s0,0(sp)
    80003924:	01010413          	addi	s0,sp,16
    80003928:	00007797          	auipc	a5,0x7
    8000392c:	9b078793          	addi	a5,a5,-1616 # 8000a2d8 <_ZTV8Producer+0x10>
    80003930:	00f53023          	sd	a5,0(a0)
    80003934:	ffffe097          	auipc	ra,0xffffe
    80003938:	f7c080e7          	jalr	-132(ra) # 800018b0 <_ZN6ThreadD1Ev>
    8000393c:	00813083          	ld	ra,8(sp)
    80003940:	00013403          	ld	s0,0(sp)
    80003944:	01010113          	addi	sp,sp,16
    80003948:	00008067          	ret

000000008000394c <_ZN8ProducerD0Ev>:
    8000394c:	fe010113          	addi	sp,sp,-32
    80003950:	00113c23          	sd	ra,24(sp)
    80003954:	00813823          	sd	s0,16(sp)
    80003958:	00913423          	sd	s1,8(sp)
    8000395c:	02010413          	addi	s0,sp,32
    80003960:	00050493          	mv	s1,a0
    80003964:	00007797          	auipc	a5,0x7
    80003968:	97478793          	addi	a5,a5,-1676 # 8000a2d8 <_ZTV8Producer+0x10>
    8000396c:	00f53023          	sd	a5,0(a0)
    80003970:	ffffe097          	auipc	ra,0xffffe
    80003974:	f40080e7          	jalr	-192(ra) # 800018b0 <_ZN6ThreadD1Ev>
    80003978:	00048513          	mv	a0,s1
    8000397c:	ffffe097          	auipc	ra,0xffffe
    80003980:	bf4080e7          	jalr	-1036(ra) # 80001570 <_ZdlPv>
    80003984:	01813083          	ld	ra,24(sp)
    80003988:	01013403          	ld	s0,16(sp)
    8000398c:	00813483          	ld	s1,8(sp)
    80003990:	02010113          	addi	sp,sp,32
    80003994:	00008067          	ret

0000000080003998 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80003998:	fe010113          	addi	sp,sp,-32
    8000399c:	00113c23          	sd	ra,24(sp)
    800039a0:	00813823          	sd	s0,16(sp)
    800039a4:	00913423          	sd	s1,8(sp)
    800039a8:	02010413          	addi	s0,sp,32
    800039ac:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    800039b0:	ffffe097          	auipc	ra,0xffffe
    800039b4:	ae0080e7          	jalr	-1312(ra) # 80001490 <_Z4getcv>
    800039b8:	0005059b          	sext.w	a1,a0
    800039bc:	01b00793          	li	a5,27
    800039c0:	00f58c63          	beq	a1,a5,800039d8 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800039c4:	0204b783          	ld	a5,32(s1)
    800039c8:	0087b503          	ld	a0,8(a5)
    800039cc:	00001097          	auipc	ra,0x1
    800039d0:	36c080e7          	jalr	876(ra) # 80004d38 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800039d4:	fddff06f          	j	800039b0 <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800039d8:	00100793          	li	a5,1
    800039dc:	00007717          	auipc	a4,0x7
    800039e0:	a6f72e23          	sw	a5,-1412(a4) # 8000a458 <_ZL9threadEnd>
        td->buffer->put('!');
    800039e4:	0204b783          	ld	a5,32(s1)
    800039e8:	02100593          	li	a1,33
    800039ec:	0087b503          	ld	a0,8(a5)
    800039f0:	00001097          	auipc	ra,0x1
    800039f4:	348080e7          	jalr	840(ra) # 80004d38 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800039f8:	0204b783          	ld	a5,32(s1)
    800039fc:	0107b503          	ld	a0,16(a5)
    80003a00:	ffffe097          	auipc	ra,0xffffe
    80003a04:	11c080e7          	jalr	284(ra) # 80001b1c <_ZN9Semaphore6signalEv>
    }
    80003a08:	01813083          	ld	ra,24(sp)
    80003a0c:	01013403          	ld	s0,16(sp)
    80003a10:	00813483          	ld	s1,8(sp)
    80003a14:	02010113          	addi	sp,sp,32
    80003a18:	00008067          	ret

0000000080003a1c <_ZN8Producer3runEv>:
    void run() override {
    80003a1c:	fe010113          	addi	sp,sp,-32
    80003a20:	00113c23          	sd	ra,24(sp)
    80003a24:	00813823          	sd	s0,16(sp)
    80003a28:	00913423          	sd	s1,8(sp)
    80003a2c:	01213023          	sd	s2,0(sp)
    80003a30:	02010413          	addi	s0,sp,32
    80003a34:	00050493          	mv	s1,a0
        int i = 0;
    80003a38:	00000913          	li	s2,0
        while (!threadEnd) {
    80003a3c:	00007797          	auipc	a5,0x7
    80003a40:	a1c7a783          	lw	a5,-1508(a5) # 8000a458 <_ZL9threadEnd>
    80003a44:	04079263          	bnez	a5,80003a88 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80003a48:	0204b783          	ld	a5,32(s1)
    80003a4c:	0007a583          	lw	a1,0(a5)
    80003a50:	0305859b          	addiw	a1,a1,48
    80003a54:	0087b503          	ld	a0,8(a5)
    80003a58:	00001097          	auipc	ra,0x1
    80003a5c:	2e0080e7          	jalr	736(ra) # 80004d38 <_ZN9BufferCPP3putEi>
            i++;
    80003a60:	0019071b          	addiw	a4,s2,1
    80003a64:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80003a68:	0204b783          	ld	a5,32(s1)
    80003a6c:	0007a783          	lw	a5,0(a5)
    80003a70:	00e787bb          	addw	a5,a5,a4
    80003a74:	00500513          	li	a0,5
    80003a78:	02a7e53b          	remw	a0,a5,a0
    80003a7c:	ffffe097          	auipc	ra,0xffffe
    80003a80:	fd4080e7          	jalr	-44(ra) # 80001a50 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80003a84:	fb9ff06f          	j	80003a3c <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80003a88:	0204b783          	ld	a5,32(s1)
    80003a8c:	0107b503          	ld	a0,16(a5)
    80003a90:	ffffe097          	auipc	ra,0xffffe
    80003a94:	08c080e7          	jalr	140(ra) # 80001b1c <_ZN9Semaphore6signalEv>
    }
    80003a98:	01813083          	ld	ra,24(sp)
    80003a9c:	01013403          	ld	s0,16(sp)
    80003aa0:	00813483          	ld	s1,8(sp)
    80003aa4:	00013903          	ld	s2,0(sp)
    80003aa8:	02010113          	addi	sp,sp,32
    80003aac:	00008067          	ret

0000000080003ab0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80003ab0:	fe010113          	addi	sp,sp,-32
    80003ab4:	00113c23          	sd	ra,24(sp)
    80003ab8:	00813823          	sd	s0,16(sp)
    80003abc:	00913423          	sd	s1,8(sp)
    80003ac0:	01213023          	sd	s2,0(sp)
    80003ac4:	02010413          	addi	s0,sp,32
    80003ac8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003acc:	00100793          	li	a5,1
    80003ad0:	02a7f863          	bgeu	a5,a0,80003b00 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003ad4:	00a00793          	li	a5,10
    80003ad8:	02f577b3          	remu	a5,a0,a5
    80003adc:	02078e63          	beqz	a5,80003b18 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80003ae0:	fff48513          	addi	a0,s1,-1
    80003ae4:	00000097          	auipc	ra,0x0
    80003ae8:	fcc080e7          	jalr	-52(ra) # 80003ab0 <_ZL9fibonaccim>
    80003aec:	00050913          	mv	s2,a0
    80003af0:	ffe48513          	addi	a0,s1,-2
    80003af4:	00000097          	auipc	ra,0x0
    80003af8:	fbc080e7          	jalr	-68(ra) # 80003ab0 <_ZL9fibonaccim>
    80003afc:	00a90533          	add	a0,s2,a0
}
    80003b00:	01813083          	ld	ra,24(sp)
    80003b04:	01013403          	ld	s0,16(sp)
    80003b08:	00813483          	ld	s1,8(sp)
    80003b0c:	00013903          	ld	s2,0(sp)
    80003b10:	02010113          	addi	sp,sp,32
    80003b14:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003b18:	ffffe097          	auipc	ra,0xffffe
    80003b1c:	814080e7          	jalr	-2028(ra) # 8000132c <_Z15thread_dispatchv>
    80003b20:	fc1ff06f          	j	80003ae0 <_ZL9fibonaccim+0x30>

0000000080003b24 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80003b24:	fe010113          	addi	sp,sp,-32
    80003b28:	00113c23          	sd	ra,24(sp)
    80003b2c:	00813823          	sd	s0,16(sp)
    80003b30:	00913423          	sd	s1,8(sp)
    80003b34:	01213023          	sd	s2,0(sp)
    80003b38:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80003b3c:	00a00493          	li	s1,10
    80003b40:	0400006f          	j	80003b80 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003b44:	00004517          	auipc	a0,0x4
    80003b48:	76c50513          	addi	a0,a0,1900 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80003b4c:	00001097          	auipc	ra,0x1
    80003b50:	dc8080e7          	jalr	-568(ra) # 80004914 <_Z11printStringPKc>
    80003b54:	00000613          	li	a2,0
    80003b58:	00a00593          	li	a1,10
    80003b5c:	00048513          	mv	a0,s1
    80003b60:	00001097          	auipc	ra,0x1
    80003b64:	f64080e7          	jalr	-156(ra) # 80004ac4 <_Z8printIntiii>
    80003b68:	00005517          	auipc	a0,0x5
    80003b6c:	96850513          	addi	a0,a0,-1688 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80003b70:	00001097          	auipc	ra,0x1
    80003b74:	da4080e7          	jalr	-604(ra) # 80004914 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003b78:	0014849b          	addiw	s1,s1,1
    80003b7c:	0ff4f493          	andi	s1,s1,255
    80003b80:	00c00793          	li	a5,12
    80003b84:	fc97f0e3          	bgeu	a5,s1,80003b44 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003b88:	00004517          	auipc	a0,0x4
    80003b8c:	73050513          	addi	a0,a0,1840 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80003b90:	00001097          	auipc	ra,0x1
    80003b94:	d84080e7          	jalr	-636(ra) # 80004914 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003b98:	00500313          	li	t1,5
    thread_dispatch();
    80003b9c:	ffffd097          	auipc	ra,0xffffd
    80003ba0:	790080e7          	jalr	1936(ra) # 8000132c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003ba4:	01000513          	li	a0,16
    80003ba8:	00000097          	auipc	ra,0x0
    80003bac:	f08080e7          	jalr	-248(ra) # 80003ab0 <_ZL9fibonaccim>
    80003bb0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003bb4:	00004517          	auipc	a0,0x4
    80003bb8:	71450513          	addi	a0,a0,1812 # 800082c8 <CONSOLE_STATUS+0x2b8>
    80003bbc:	00001097          	auipc	ra,0x1
    80003bc0:	d58080e7          	jalr	-680(ra) # 80004914 <_Z11printStringPKc>
    80003bc4:	00000613          	li	a2,0
    80003bc8:	00a00593          	li	a1,10
    80003bcc:	0009051b          	sext.w	a0,s2
    80003bd0:	00001097          	auipc	ra,0x1
    80003bd4:	ef4080e7          	jalr	-268(ra) # 80004ac4 <_Z8printIntiii>
    80003bd8:	00005517          	auipc	a0,0x5
    80003bdc:	8f850513          	addi	a0,a0,-1800 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80003be0:	00001097          	auipc	ra,0x1
    80003be4:	d34080e7          	jalr	-716(ra) # 80004914 <_Z11printStringPKc>
    80003be8:	0400006f          	j	80003c28 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003bec:	00004517          	auipc	a0,0x4
    80003bf0:	6c450513          	addi	a0,a0,1732 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80003bf4:	00001097          	auipc	ra,0x1
    80003bf8:	d20080e7          	jalr	-736(ra) # 80004914 <_Z11printStringPKc>
    80003bfc:	00000613          	li	a2,0
    80003c00:	00a00593          	li	a1,10
    80003c04:	00048513          	mv	a0,s1
    80003c08:	00001097          	auipc	ra,0x1
    80003c0c:	ebc080e7          	jalr	-324(ra) # 80004ac4 <_Z8printIntiii>
    80003c10:	00005517          	auipc	a0,0x5
    80003c14:	8c050513          	addi	a0,a0,-1856 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80003c18:	00001097          	auipc	ra,0x1
    80003c1c:	cfc080e7          	jalr	-772(ra) # 80004914 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003c20:	0014849b          	addiw	s1,s1,1
    80003c24:	0ff4f493          	andi	s1,s1,255
    80003c28:	00f00793          	li	a5,15
    80003c2c:	fc97f0e3          	bgeu	a5,s1,80003bec <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80003c30:	00004517          	auipc	a0,0x4
    80003c34:	6a850513          	addi	a0,a0,1704 # 800082d8 <CONSOLE_STATUS+0x2c8>
    80003c38:	00001097          	auipc	ra,0x1
    80003c3c:	cdc080e7          	jalr	-804(ra) # 80004914 <_Z11printStringPKc>
    finishedD = true;
    80003c40:	00100793          	li	a5,1
    80003c44:	00007717          	auipc	a4,0x7
    80003c48:	82f70223          	sb	a5,-2012(a4) # 8000a468 <_ZL9finishedD>
    thread_dispatch();
    80003c4c:	ffffd097          	auipc	ra,0xffffd
    80003c50:	6e0080e7          	jalr	1760(ra) # 8000132c <_Z15thread_dispatchv>
}
    80003c54:	01813083          	ld	ra,24(sp)
    80003c58:	01013403          	ld	s0,16(sp)
    80003c5c:	00813483          	ld	s1,8(sp)
    80003c60:	00013903          	ld	s2,0(sp)
    80003c64:	02010113          	addi	sp,sp,32
    80003c68:	00008067          	ret

0000000080003c6c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003c6c:	fe010113          	addi	sp,sp,-32
    80003c70:	00113c23          	sd	ra,24(sp)
    80003c74:	00813823          	sd	s0,16(sp)
    80003c78:	00913423          	sd	s1,8(sp)
    80003c7c:	01213023          	sd	s2,0(sp)
    80003c80:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003c84:	00000493          	li	s1,0
    80003c88:	0400006f          	j	80003cc8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003c8c:	00004517          	auipc	a0,0x4
    80003c90:	5f450513          	addi	a0,a0,1524 # 80008280 <CONSOLE_STATUS+0x270>
    80003c94:	00001097          	auipc	ra,0x1
    80003c98:	c80080e7          	jalr	-896(ra) # 80004914 <_Z11printStringPKc>
    80003c9c:	00000613          	li	a2,0
    80003ca0:	00a00593          	li	a1,10
    80003ca4:	00048513          	mv	a0,s1
    80003ca8:	00001097          	auipc	ra,0x1
    80003cac:	e1c080e7          	jalr	-484(ra) # 80004ac4 <_Z8printIntiii>
    80003cb0:	00005517          	auipc	a0,0x5
    80003cb4:	82050513          	addi	a0,a0,-2016 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80003cb8:	00001097          	auipc	ra,0x1
    80003cbc:	c5c080e7          	jalr	-932(ra) # 80004914 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003cc0:	0014849b          	addiw	s1,s1,1
    80003cc4:	0ff4f493          	andi	s1,s1,255
    80003cc8:	00200793          	li	a5,2
    80003ccc:	fc97f0e3          	bgeu	a5,s1,80003c8c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80003cd0:	00004517          	auipc	a0,0x4
    80003cd4:	5b850513          	addi	a0,a0,1464 # 80008288 <CONSOLE_STATUS+0x278>
    80003cd8:	00001097          	auipc	ra,0x1
    80003cdc:	c3c080e7          	jalr	-964(ra) # 80004914 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003ce0:	00700313          	li	t1,7
    thread_dispatch();
    80003ce4:	ffffd097          	auipc	ra,0xffffd
    80003ce8:	648080e7          	jalr	1608(ra) # 8000132c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003cec:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80003cf0:	00004517          	auipc	a0,0x4
    80003cf4:	5a850513          	addi	a0,a0,1448 # 80008298 <CONSOLE_STATUS+0x288>
    80003cf8:	00001097          	auipc	ra,0x1
    80003cfc:	c1c080e7          	jalr	-996(ra) # 80004914 <_Z11printStringPKc>
    80003d00:	00000613          	li	a2,0
    80003d04:	00a00593          	li	a1,10
    80003d08:	0009051b          	sext.w	a0,s2
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	db8080e7          	jalr	-584(ra) # 80004ac4 <_Z8printIntiii>
    80003d14:	00004517          	auipc	a0,0x4
    80003d18:	7bc50513          	addi	a0,a0,1980 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80003d1c:	00001097          	auipc	ra,0x1
    80003d20:	bf8080e7          	jalr	-1032(ra) # 80004914 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80003d24:	00c00513          	li	a0,12
    80003d28:	00000097          	auipc	ra,0x0
    80003d2c:	d88080e7          	jalr	-632(ra) # 80003ab0 <_ZL9fibonaccim>
    80003d30:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80003d34:	00004517          	auipc	a0,0x4
    80003d38:	56c50513          	addi	a0,a0,1388 # 800082a0 <CONSOLE_STATUS+0x290>
    80003d3c:	00001097          	auipc	ra,0x1
    80003d40:	bd8080e7          	jalr	-1064(ra) # 80004914 <_Z11printStringPKc>
    80003d44:	00000613          	li	a2,0
    80003d48:	00a00593          	li	a1,10
    80003d4c:	0009051b          	sext.w	a0,s2
    80003d50:	00001097          	auipc	ra,0x1
    80003d54:	d74080e7          	jalr	-652(ra) # 80004ac4 <_Z8printIntiii>
    80003d58:	00004517          	auipc	a0,0x4
    80003d5c:	77850513          	addi	a0,a0,1912 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80003d60:	00001097          	auipc	ra,0x1
    80003d64:	bb4080e7          	jalr	-1100(ra) # 80004914 <_Z11printStringPKc>
    80003d68:	0400006f          	j	80003da8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003d6c:	00004517          	auipc	a0,0x4
    80003d70:	51450513          	addi	a0,a0,1300 # 80008280 <CONSOLE_STATUS+0x270>
    80003d74:	00001097          	auipc	ra,0x1
    80003d78:	ba0080e7          	jalr	-1120(ra) # 80004914 <_Z11printStringPKc>
    80003d7c:	00000613          	li	a2,0
    80003d80:	00a00593          	li	a1,10
    80003d84:	00048513          	mv	a0,s1
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	d3c080e7          	jalr	-708(ra) # 80004ac4 <_Z8printIntiii>
    80003d90:	00004517          	auipc	a0,0x4
    80003d94:	74050513          	addi	a0,a0,1856 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80003d98:	00001097          	auipc	ra,0x1
    80003d9c:	b7c080e7          	jalr	-1156(ra) # 80004914 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003da0:	0014849b          	addiw	s1,s1,1
    80003da4:	0ff4f493          	andi	s1,s1,255
    80003da8:	00500793          	li	a5,5
    80003dac:	fc97f0e3          	bgeu	a5,s1,80003d6c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80003db0:	00004517          	auipc	a0,0x4
    80003db4:	4a850513          	addi	a0,a0,1192 # 80008258 <CONSOLE_STATUS+0x248>
    80003db8:	00001097          	auipc	ra,0x1
    80003dbc:	b5c080e7          	jalr	-1188(ra) # 80004914 <_Z11printStringPKc>
    finishedC = true;
    80003dc0:	00100793          	li	a5,1
    80003dc4:	00006717          	auipc	a4,0x6
    80003dc8:	6af702a3          	sb	a5,1701(a4) # 8000a469 <_ZL9finishedC>
    thread_dispatch();
    80003dcc:	ffffd097          	auipc	ra,0xffffd
    80003dd0:	560080e7          	jalr	1376(ra) # 8000132c <_Z15thread_dispatchv>
}
    80003dd4:	01813083          	ld	ra,24(sp)
    80003dd8:	01013403          	ld	s0,16(sp)
    80003ddc:	00813483          	ld	s1,8(sp)
    80003de0:	00013903          	ld	s2,0(sp)
    80003de4:	02010113          	addi	sp,sp,32
    80003de8:	00008067          	ret

0000000080003dec <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003dec:	fe010113          	addi	sp,sp,-32
    80003df0:	00113c23          	sd	ra,24(sp)
    80003df4:	00813823          	sd	s0,16(sp)
    80003df8:	00913423          	sd	s1,8(sp)
    80003dfc:	01213023          	sd	s2,0(sp)
    80003e00:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003e04:	00000913          	li	s2,0
    80003e08:	0380006f          	j	80003e40 <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80003e0c:	ffffd097          	auipc	ra,0xffffd
    80003e10:	520080e7          	jalr	1312(ra) # 8000132c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003e14:	00148493          	addi	s1,s1,1
    80003e18:	000027b7          	lui	a5,0x2
    80003e1c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003e20:	0097ee63          	bltu	a5,s1,80003e3c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003e24:	00000713          	li	a4,0
    80003e28:	000077b7          	lui	a5,0x7
    80003e2c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003e30:	fce7eee3          	bltu	a5,a4,80003e0c <_ZL11workerBodyBPv+0x20>
    80003e34:	00170713          	addi	a4,a4,1
    80003e38:	ff1ff06f          	j	80003e28 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003e3c:	00190913          	addi	s2,s2,1
    80003e40:	00f00793          	li	a5,15
    80003e44:	0527e063          	bltu	a5,s2,80003e84 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80003e48:	00004517          	auipc	a0,0x4
    80003e4c:	42050513          	addi	a0,a0,1056 # 80008268 <CONSOLE_STATUS+0x258>
    80003e50:	00001097          	auipc	ra,0x1
    80003e54:	ac4080e7          	jalr	-1340(ra) # 80004914 <_Z11printStringPKc>
    80003e58:	00000613          	li	a2,0
    80003e5c:	00a00593          	li	a1,10
    80003e60:	0009051b          	sext.w	a0,s2
    80003e64:	00001097          	auipc	ra,0x1
    80003e68:	c60080e7          	jalr	-928(ra) # 80004ac4 <_Z8printIntiii>
    80003e6c:	00004517          	auipc	a0,0x4
    80003e70:	66450513          	addi	a0,a0,1636 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80003e74:	00001097          	auipc	ra,0x1
    80003e78:	aa0080e7          	jalr	-1376(ra) # 80004914 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003e7c:	00000493          	li	s1,0
    80003e80:	f99ff06f          	j	80003e18 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003e84:	00004517          	auipc	a0,0x4
    80003e88:	3ec50513          	addi	a0,a0,1004 # 80008270 <CONSOLE_STATUS+0x260>
    80003e8c:	00001097          	auipc	ra,0x1
    80003e90:	a88080e7          	jalr	-1400(ra) # 80004914 <_Z11printStringPKc>
    finishedB = true;
    80003e94:	00100793          	li	a5,1
    80003e98:	00006717          	auipc	a4,0x6
    80003e9c:	5cf70923          	sb	a5,1490(a4) # 8000a46a <_ZL9finishedB>
    thread_dispatch();
    80003ea0:	ffffd097          	auipc	ra,0xffffd
    80003ea4:	48c080e7          	jalr	1164(ra) # 8000132c <_Z15thread_dispatchv>
}
    80003ea8:	01813083          	ld	ra,24(sp)
    80003eac:	01013403          	ld	s0,16(sp)
    80003eb0:	00813483          	ld	s1,8(sp)
    80003eb4:	00013903          	ld	s2,0(sp)
    80003eb8:	02010113          	addi	sp,sp,32
    80003ebc:	00008067          	ret

0000000080003ec0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80003ec0:	fe010113          	addi	sp,sp,-32
    80003ec4:	00113c23          	sd	ra,24(sp)
    80003ec8:	00813823          	sd	s0,16(sp)
    80003ecc:	00913423          	sd	s1,8(sp)
    80003ed0:	01213023          	sd	s2,0(sp)
    80003ed4:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003ed8:	00000913          	li	s2,0
    80003edc:	0380006f          	j	80003f14 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80003ee0:	ffffd097          	auipc	ra,0xffffd
    80003ee4:	44c080e7          	jalr	1100(ra) # 8000132c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003ee8:	00148493          	addi	s1,s1,1
    80003eec:	000027b7          	lui	a5,0x2
    80003ef0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003ef4:	0097ee63          	bltu	a5,s1,80003f10 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003ef8:	00000713          	li	a4,0
    80003efc:	000077b7          	lui	a5,0x7
    80003f00:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003f04:	fce7eee3          	bltu	a5,a4,80003ee0 <_ZL11workerBodyAPv+0x20>
    80003f08:	00170713          	addi	a4,a4,1
    80003f0c:	ff1ff06f          	j	80003efc <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003f10:	00190913          	addi	s2,s2,1
    80003f14:	00900793          	li	a5,9
    80003f18:	0527e063          	bltu	a5,s2,80003f58 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003f1c:	00004517          	auipc	a0,0x4
    80003f20:	33450513          	addi	a0,a0,820 # 80008250 <CONSOLE_STATUS+0x240>
    80003f24:	00001097          	auipc	ra,0x1
    80003f28:	9f0080e7          	jalr	-1552(ra) # 80004914 <_Z11printStringPKc>
    80003f2c:	00000613          	li	a2,0
    80003f30:	00a00593          	li	a1,10
    80003f34:	0009051b          	sext.w	a0,s2
    80003f38:	00001097          	auipc	ra,0x1
    80003f3c:	b8c080e7          	jalr	-1140(ra) # 80004ac4 <_Z8printIntiii>
    80003f40:	00004517          	auipc	a0,0x4
    80003f44:	59050513          	addi	a0,a0,1424 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80003f48:	00001097          	auipc	ra,0x1
    80003f4c:	9cc080e7          	jalr	-1588(ra) # 80004914 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003f50:	00000493          	li	s1,0
    80003f54:	f99ff06f          	j	80003eec <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003f58:	00004517          	auipc	a0,0x4
    80003f5c:	30050513          	addi	a0,a0,768 # 80008258 <CONSOLE_STATUS+0x248>
    80003f60:	00001097          	auipc	ra,0x1
    80003f64:	9b4080e7          	jalr	-1612(ra) # 80004914 <_Z11printStringPKc>
    finishedA = true;
    80003f68:	00100793          	li	a5,1
    80003f6c:	00006717          	auipc	a4,0x6
    80003f70:	4ef70fa3          	sb	a5,1279(a4) # 8000a46b <_ZL9finishedA>
}
    80003f74:	01813083          	ld	ra,24(sp)
    80003f78:	01013403          	ld	s0,16(sp)
    80003f7c:	00813483          	ld	s1,8(sp)
    80003f80:	00013903          	ld	s2,0(sp)
    80003f84:	02010113          	addi	sp,sp,32
    80003f88:	00008067          	ret

0000000080003f8c <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003f8c:	fd010113          	addi	sp,sp,-48
    80003f90:	02113423          	sd	ra,40(sp)
    80003f94:	02813023          	sd	s0,32(sp)
    80003f98:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003f9c:	00000613          	li	a2,0
    80003fa0:	00000597          	auipc	a1,0x0
    80003fa4:	f2058593          	addi	a1,a1,-224 # 80003ec0 <_ZL11workerBodyAPv>
    80003fa8:	fd040513          	addi	a0,s0,-48
    80003fac:	ffffd097          	auipc	ra,0xffffd
    80003fb0:	30c080e7          	jalr	780(ra) # 800012b8 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadA created\n");
    80003fb4:	00004517          	auipc	a0,0x4
    80003fb8:	33450513          	addi	a0,a0,820 # 800082e8 <CONSOLE_STATUS+0x2d8>
    80003fbc:	00001097          	auipc	ra,0x1
    80003fc0:	958080e7          	jalr	-1704(ra) # 80004914 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003fc4:	00000613          	li	a2,0
    80003fc8:	00000597          	auipc	a1,0x0
    80003fcc:	e2458593          	addi	a1,a1,-476 # 80003dec <_ZL11workerBodyBPv>
    80003fd0:	fd840513          	addi	a0,s0,-40
    80003fd4:	ffffd097          	auipc	ra,0xffffd
    80003fd8:	2e4080e7          	jalr	740(ra) # 800012b8 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadB created\n");
    80003fdc:	00004517          	auipc	a0,0x4
    80003fe0:	32450513          	addi	a0,a0,804 # 80008300 <CONSOLE_STATUS+0x2f0>
    80003fe4:	00001097          	auipc	ra,0x1
    80003fe8:	930080e7          	jalr	-1744(ra) # 80004914 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003fec:	00000613          	li	a2,0
    80003ff0:	00000597          	auipc	a1,0x0
    80003ff4:	c7c58593          	addi	a1,a1,-900 # 80003c6c <_ZL11workerBodyCPv>
    80003ff8:	fe040513          	addi	a0,s0,-32
    80003ffc:	ffffd097          	auipc	ra,0xffffd
    80004000:	2bc080e7          	jalr	700(ra) # 800012b8 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadC created\n");
    80004004:	00004517          	auipc	a0,0x4
    80004008:	31450513          	addi	a0,a0,788 # 80008318 <CONSOLE_STATUS+0x308>
    8000400c:	00001097          	auipc	ra,0x1
    80004010:	908080e7          	jalr	-1784(ra) # 80004914 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004014:	00000613          	li	a2,0
    80004018:	00000597          	auipc	a1,0x0
    8000401c:	b0c58593          	addi	a1,a1,-1268 # 80003b24 <_ZL11workerBodyDPv>
    80004020:	fe840513          	addi	a0,s0,-24
    80004024:	ffffd097          	auipc	ra,0xffffd
    80004028:	294080e7          	jalr	660(ra) # 800012b8 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadD created\n");
    8000402c:	00004517          	auipc	a0,0x4
    80004030:	30450513          	addi	a0,a0,772 # 80008330 <CONSOLE_STATUS+0x320>
    80004034:	00001097          	auipc	ra,0x1
    80004038:	8e0080e7          	jalr	-1824(ra) # 80004914 <_Z11printStringPKc>
    8000403c:	00c0006f          	j	80004048 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004040:	ffffd097          	auipc	ra,0xffffd
    80004044:	2ec080e7          	jalr	748(ra) # 8000132c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004048:	00006797          	auipc	a5,0x6
    8000404c:	4237c783          	lbu	a5,1059(a5) # 8000a46b <_ZL9finishedA>
    80004050:	fe0788e3          	beqz	a5,80004040 <_Z18Threads_C_API_testv+0xb4>
    80004054:	00006797          	auipc	a5,0x6
    80004058:	4167c783          	lbu	a5,1046(a5) # 8000a46a <_ZL9finishedB>
    8000405c:	fe0782e3          	beqz	a5,80004040 <_Z18Threads_C_API_testv+0xb4>
    80004060:	00006797          	auipc	a5,0x6
    80004064:	4097c783          	lbu	a5,1033(a5) # 8000a469 <_ZL9finishedC>
    80004068:	fc078ce3          	beqz	a5,80004040 <_Z18Threads_C_API_testv+0xb4>
    8000406c:	00006797          	auipc	a5,0x6
    80004070:	3fc7c783          	lbu	a5,1020(a5) # 8000a468 <_ZL9finishedD>
    80004074:	fc0786e3          	beqz	a5,80004040 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80004078:	02813083          	ld	ra,40(sp)
    8000407c:	02013403          	ld	s0,32(sp)
    80004080:	03010113          	addi	sp,sp,48
    80004084:	00008067          	ret

0000000080004088 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80004088:	fd010113          	addi	sp,sp,-48
    8000408c:	02113423          	sd	ra,40(sp)
    80004090:	02813023          	sd	s0,32(sp)
    80004094:	00913c23          	sd	s1,24(sp)
    80004098:	01213823          	sd	s2,16(sp)
    8000409c:	01313423          	sd	s3,8(sp)
    800040a0:	03010413          	addi	s0,sp,48
    800040a4:	00050993          	mv	s3,a0
    800040a8:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800040ac:	00000913          	li	s2,0
    800040b0:	00c0006f          	j	800040bc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800040b4:	ffffe097          	auipc	ra,0xffffe
    800040b8:	974080e7          	jalr	-1676(ra) # 80001a28 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    800040bc:	ffffd097          	auipc	ra,0xffffd
    800040c0:	3d4080e7          	jalr	980(ra) # 80001490 <_Z4getcv>
    800040c4:	0005059b          	sext.w	a1,a0
    800040c8:	01b00793          	li	a5,27
    800040cc:	02f58a63          	beq	a1,a5,80004100 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    800040d0:	0084b503          	ld	a0,8(s1)
    800040d4:	00001097          	auipc	ra,0x1
    800040d8:	c64080e7          	jalr	-924(ra) # 80004d38 <_ZN9BufferCPP3putEi>
        i++;
    800040dc:	0019071b          	addiw	a4,s2,1
    800040e0:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800040e4:	0004a683          	lw	a3,0(s1)
    800040e8:	0026979b          	slliw	a5,a3,0x2
    800040ec:	00d787bb          	addw	a5,a5,a3
    800040f0:	0017979b          	slliw	a5,a5,0x1
    800040f4:	02f767bb          	remw	a5,a4,a5
    800040f8:	fc0792e3          	bnez	a5,800040bc <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800040fc:	fb9ff06f          	j	800040b4 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004100:	00100793          	li	a5,1
    80004104:	00006717          	auipc	a4,0x6
    80004108:	36f72623          	sw	a5,876(a4) # 8000a470 <_ZL9threadEnd>
    td->buffer->put('!');
    8000410c:	0209b783          	ld	a5,32(s3)
    80004110:	02100593          	li	a1,33
    80004114:	0087b503          	ld	a0,8(a5)
    80004118:	00001097          	auipc	ra,0x1
    8000411c:	c20080e7          	jalr	-992(ra) # 80004d38 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004120:	0104b503          	ld	a0,16(s1)
    80004124:	ffffe097          	auipc	ra,0xffffe
    80004128:	9f8080e7          	jalr	-1544(ra) # 80001b1c <_ZN9Semaphore6signalEv>
}
    8000412c:	02813083          	ld	ra,40(sp)
    80004130:	02013403          	ld	s0,32(sp)
    80004134:	01813483          	ld	s1,24(sp)
    80004138:	01013903          	ld	s2,16(sp)
    8000413c:	00813983          	ld	s3,8(sp)
    80004140:	03010113          	addi	sp,sp,48
    80004144:	00008067          	ret

0000000080004148 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004148:	fe010113          	addi	sp,sp,-32
    8000414c:	00113c23          	sd	ra,24(sp)
    80004150:	00813823          	sd	s0,16(sp)
    80004154:	00913423          	sd	s1,8(sp)
    80004158:	01213023          	sd	s2,0(sp)
    8000415c:	02010413          	addi	s0,sp,32
    80004160:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004164:	00000913          	li	s2,0
    80004168:	00c0006f          	j	80004174 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    8000416c:	ffffe097          	auipc	ra,0xffffe
    80004170:	8bc080e7          	jalr	-1860(ra) # 80001a28 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004174:	00006797          	auipc	a5,0x6
    80004178:	2fc7a783          	lw	a5,764(a5) # 8000a470 <_ZL9threadEnd>
    8000417c:	02079e63          	bnez	a5,800041b8 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004180:	0004a583          	lw	a1,0(s1)
    80004184:	0305859b          	addiw	a1,a1,48
    80004188:	0084b503          	ld	a0,8(s1)
    8000418c:	00001097          	auipc	ra,0x1
    80004190:	bac080e7          	jalr	-1108(ra) # 80004d38 <_ZN9BufferCPP3putEi>
        i++;
    80004194:	0019071b          	addiw	a4,s2,1
    80004198:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000419c:	0004a683          	lw	a3,0(s1)
    800041a0:	0026979b          	slliw	a5,a3,0x2
    800041a4:	00d787bb          	addw	a5,a5,a3
    800041a8:	0017979b          	slliw	a5,a5,0x1
    800041ac:	02f767bb          	remw	a5,a4,a5
    800041b0:	fc0792e3          	bnez	a5,80004174 <_ZN12ProducerSync8producerEPv+0x2c>
    800041b4:	fb9ff06f          	j	8000416c <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    800041b8:	0104b503          	ld	a0,16(s1)
    800041bc:	ffffe097          	auipc	ra,0xffffe
    800041c0:	960080e7          	jalr	-1696(ra) # 80001b1c <_ZN9Semaphore6signalEv>
}
    800041c4:	01813083          	ld	ra,24(sp)
    800041c8:	01013403          	ld	s0,16(sp)
    800041cc:	00813483          	ld	s1,8(sp)
    800041d0:	00013903          	ld	s2,0(sp)
    800041d4:	02010113          	addi	sp,sp,32
    800041d8:	00008067          	ret

00000000800041dc <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    800041dc:	fd010113          	addi	sp,sp,-48
    800041e0:	02113423          	sd	ra,40(sp)
    800041e4:	02813023          	sd	s0,32(sp)
    800041e8:	00913c23          	sd	s1,24(sp)
    800041ec:	01213823          	sd	s2,16(sp)
    800041f0:	01313423          	sd	s3,8(sp)
    800041f4:	01413023          	sd	s4,0(sp)
    800041f8:	03010413          	addi	s0,sp,48
    800041fc:	00050993          	mv	s3,a0
    80004200:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004204:	00000a13          	li	s4,0
    80004208:	01c0006f          	j	80004224 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    8000420c:	ffffe097          	auipc	ra,0xffffe
    80004210:	81c080e7          	jalr	-2020(ra) # 80001a28 <_ZN6Thread8dispatchEv>
    80004214:	0500006f          	j	80004264 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004218:	00a00513          	li	a0,10
    8000421c:	ffffd097          	auipc	ra,0xffffd
    80004220:	2a8080e7          	jalr	680(ra) # 800014c4 <_Z4putcc>
    while (!threadEnd) {
    80004224:	00006797          	auipc	a5,0x6
    80004228:	24c7a783          	lw	a5,588(a5) # 8000a470 <_ZL9threadEnd>
    8000422c:	06079263          	bnez	a5,80004290 <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004230:	00893503          	ld	a0,8(s2)
    80004234:	00001097          	auipc	ra,0x1
    80004238:	b94080e7          	jalr	-1132(ra) # 80004dc8 <_ZN9BufferCPP3getEv>
        i++;
    8000423c:	001a049b          	addiw	s1,s4,1
    80004240:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004244:	0ff57513          	andi	a0,a0,255
    80004248:	ffffd097          	auipc	ra,0xffffd
    8000424c:	27c080e7          	jalr	636(ra) # 800014c4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004250:	00092703          	lw	a4,0(s2)
    80004254:	0027179b          	slliw	a5,a4,0x2
    80004258:	00e787bb          	addw	a5,a5,a4
    8000425c:	02f4e7bb          	remw	a5,s1,a5
    80004260:	fa0786e3          	beqz	a5,8000420c <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004264:	05000793          	li	a5,80
    80004268:	02f4e4bb          	remw	s1,s1,a5
    8000426c:	fa049ce3          	bnez	s1,80004224 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004270:	fa9ff06f          	j	80004218 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004274:	0209b783          	ld	a5,32(s3)
    80004278:	0087b503          	ld	a0,8(a5)
    8000427c:	00001097          	auipc	ra,0x1
    80004280:	b4c080e7          	jalr	-1204(ra) # 80004dc8 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004284:	0ff57513          	andi	a0,a0,255
    80004288:	ffffe097          	auipc	ra,0xffffe
    8000428c:	914080e7          	jalr	-1772(ra) # 80001b9c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004290:	0209b783          	ld	a5,32(s3)
    80004294:	0087b503          	ld	a0,8(a5)
    80004298:	00001097          	auipc	ra,0x1
    8000429c:	bbc080e7          	jalr	-1092(ra) # 80004e54 <_ZN9BufferCPP6getCntEv>
    800042a0:	fca04ae3          	bgtz	a0,80004274 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    800042a4:	01093503          	ld	a0,16(s2)
    800042a8:	ffffe097          	auipc	ra,0xffffe
    800042ac:	874080e7          	jalr	-1932(ra) # 80001b1c <_ZN9Semaphore6signalEv>
}
    800042b0:	02813083          	ld	ra,40(sp)
    800042b4:	02013403          	ld	s0,32(sp)
    800042b8:	01813483          	ld	s1,24(sp)
    800042bc:	01013903          	ld	s2,16(sp)
    800042c0:	00813983          	ld	s3,8(sp)
    800042c4:	00013a03          	ld	s4,0(sp)
    800042c8:	03010113          	addi	sp,sp,48
    800042cc:	00008067          	ret

00000000800042d0 <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    800042d0:	f8010113          	addi	sp,sp,-128
    800042d4:	06113c23          	sd	ra,120(sp)
    800042d8:	06813823          	sd	s0,112(sp)
    800042dc:	06913423          	sd	s1,104(sp)
    800042e0:	07213023          	sd	s2,96(sp)
    800042e4:	05313c23          	sd	s3,88(sp)
    800042e8:	05413823          	sd	s4,80(sp)
    800042ec:	05513423          	sd	s5,72(sp)
    800042f0:	05613023          	sd	s6,64(sp)
    800042f4:	03713c23          	sd	s7,56(sp)
    800042f8:	03813823          	sd	s8,48(sp)
    800042fc:	03913423          	sd	s9,40(sp)
    80004300:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004304:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004308:	00004517          	auipc	a0,0x4
    8000430c:	e6050513          	addi	a0,a0,-416 # 80008168 <CONSOLE_STATUS+0x158>
    80004310:	00000097          	auipc	ra,0x0
    80004314:	604080e7          	jalr	1540(ra) # 80004914 <_Z11printStringPKc>
    getString(input, 30);
    80004318:	01e00593          	li	a1,30
    8000431c:	f8040493          	addi	s1,s0,-128
    80004320:	00048513          	mv	a0,s1
    80004324:	00000097          	auipc	ra,0x0
    80004328:	678080e7          	jalr	1656(ra) # 8000499c <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000432c:	00048513          	mv	a0,s1
    80004330:	00000097          	auipc	ra,0x0
    80004334:	744080e7          	jalr	1860(ra) # 80004a74 <_Z11stringToIntPKc>
    80004338:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000433c:	00004517          	auipc	a0,0x4
    80004340:	e4c50513          	addi	a0,a0,-436 # 80008188 <CONSOLE_STATUS+0x178>
    80004344:	00000097          	auipc	ra,0x0
    80004348:	5d0080e7          	jalr	1488(ra) # 80004914 <_Z11printStringPKc>
    getString(input, 30);
    8000434c:	01e00593          	li	a1,30
    80004350:	00048513          	mv	a0,s1
    80004354:	00000097          	auipc	ra,0x0
    80004358:	648080e7          	jalr	1608(ra) # 8000499c <_Z9getStringPci>
    n = stringToInt(input);
    8000435c:	00048513          	mv	a0,s1
    80004360:	00000097          	auipc	ra,0x0
    80004364:	714080e7          	jalr	1812(ra) # 80004a74 <_Z11stringToIntPKc>
    80004368:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000436c:	00004517          	auipc	a0,0x4
    80004370:	e3c50513          	addi	a0,a0,-452 # 800081a8 <CONSOLE_STATUS+0x198>
    80004374:	00000097          	auipc	ra,0x0
    80004378:	5a0080e7          	jalr	1440(ra) # 80004914 <_Z11printStringPKc>
    8000437c:	00000613          	li	a2,0
    80004380:	00a00593          	li	a1,10
    80004384:	00090513          	mv	a0,s2
    80004388:	00000097          	auipc	ra,0x0
    8000438c:	73c080e7          	jalr	1852(ra) # 80004ac4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004390:	00004517          	auipc	a0,0x4
    80004394:	e3050513          	addi	a0,a0,-464 # 800081c0 <CONSOLE_STATUS+0x1b0>
    80004398:	00000097          	auipc	ra,0x0
    8000439c:	57c080e7          	jalr	1404(ra) # 80004914 <_Z11printStringPKc>
    800043a0:	00000613          	li	a2,0
    800043a4:	00a00593          	li	a1,10
    800043a8:	00048513          	mv	a0,s1
    800043ac:	00000097          	auipc	ra,0x0
    800043b0:	718080e7          	jalr	1816(ra) # 80004ac4 <_Z8printIntiii>
    printString(".\n");
    800043b4:	00004517          	auipc	a0,0x4
    800043b8:	e2450513          	addi	a0,a0,-476 # 800081d8 <CONSOLE_STATUS+0x1c8>
    800043bc:	00000097          	auipc	ra,0x0
    800043c0:	558080e7          	jalr	1368(ra) # 80004914 <_Z11printStringPKc>
    if(threadNum > n) {
    800043c4:	0324c463          	blt	s1,s2,800043ec <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    800043c8:	03205c63          	blez	s2,80004400 <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    800043cc:	03800513          	li	a0,56
    800043d0:	ffffd097          	auipc	ra,0xffffd
    800043d4:	150080e7          	jalr	336(ra) # 80001520 <_Znwm>
    800043d8:	00050a93          	mv	s5,a0
    800043dc:	00048593          	mv	a1,s1
    800043e0:	00001097          	auipc	ra,0x1
    800043e4:	804080e7          	jalr	-2044(ra) # 80004be4 <_ZN9BufferCPPC1Ei>
    800043e8:	0300006f          	j	80004418 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800043ec:	00004517          	auipc	a0,0x4
    800043f0:	df450513          	addi	a0,a0,-524 # 800081e0 <CONSOLE_STATUS+0x1d0>
    800043f4:	00000097          	auipc	ra,0x0
    800043f8:	520080e7          	jalr	1312(ra) # 80004914 <_Z11printStringPKc>
        return;
    800043fc:	0140006f          	j	80004410 <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004400:	00004517          	auipc	a0,0x4
    80004404:	e2050513          	addi	a0,a0,-480 # 80008220 <CONSOLE_STATUS+0x210>
    80004408:	00000097          	auipc	ra,0x0
    8000440c:	50c080e7          	jalr	1292(ra) # 80004914 <_Z11printStringPKc>
        return;
    80004410:	000b8113          	mv	sp,s7
    80004414:	2380006f          	j	8000464c <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004418:	01000513          	li	a0,16
    8000441c:	ffffd097          	auipc	ra,0xffffd
    80004420:	104080e7          	jalr	260(ra) # 80001520 <_Znwm>
    80004424:	00050493          	mv	s1,a0
    80004428:	00000593          	li	a1,0
    8000442c:	ffffd097          	auipc	ra,0xffffd
    80004430:	68c080e7          	jalr	1676(ra) # 80001ab8 <_ZN9SemaphoreC1Ej>
    80004434:	00006797          	auipc	a5,0x6
    80004438:	0497b223          	sd	s1,68(a5) # 8000a478 <_ZL10waitForAll>
    Thread* threads[threadNum];
    8000443c:	00391793          	slli	a5,s2,0x3
    80004440:	00f78793          	addi	a5,a5,15
    80004444:	ff07f793          	andi	a5,a5,-16
    80004448:	40f10133          	sub	sp,sp,a5
    8000444c:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004450:	0019071b          	addiw	a4,s2,1
    80004454:	00171793          	slli	a5,a4,0x1
    80004458:	00e787b3          	add	a5,a5,a4
    8000445c:	00379793          	slli	a5,a5,0x3
    80004460:	00f78793          	addi	a5,a5,15
    80004464:	ff07f793          	andi	a5,a5,-16
    80004468:	40f10133          	sub	sp,sp,a5
    8000446c:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004470:	00191c13          	slli	s8,s2,0x1
    80004474:	012c07b3          	add	a5,s8,s2
    80004478:	00379793          	slli	a5,a5,0x3
    8000447c:	00fa07b3          	add	a5,s4,a5
    80004480:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004484:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004488:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    8000448c:	02800513          	li	a0,40
    80004490:	ffffd097          	auipc	ra,0xffffd
    80004494:	090080e7          	jalr	144(ra) # 80001520 <_Znwm>
    80004498:	00050b13          	mv	s6,a0
    8000449c:	012c0c33          	add	s8,s8,s2
    800044a0:	003c1c13          	slli	s8,s8,0x3
    800044a4:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    800044a8:	ffffd097          	auipc	ra,0xffffd
    800044ac:	5c4080e7          	jalr	1476(ra) # 80001a6c <_ZN6ThreadC1Ev>
    800044b0:	00006797          	auipc	a5,0x6
    800044b4:	ec878793          	addi	a5,a5,-312 # 8000a378 <_ZTV12ConsumerSync+0x10>
    800044b8:	00fb3023          	sd	a5,0(s6)
    800044bc:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    800044c0:	000b0513          	mv	a0,s6
    800044c4:	ffffd097          	auipc	ra,0xffffd
    800044c8:	548080e7          	jalr	1352(ra) # 80001a0c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    800044cc:	00000493          	li	s1,0
    800044d0:	0380006f          	j	80004508 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    800044d4:	00006797          	auipc	a5,0x6
    800044d8:	e7c78793          	addi	a5,a5,-388 # 8000a350 <_ZTV12ProducerSync+0x10>
    800044dc:	00fcb023          	sd	a5,0(s9)
    800044e0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    800044e4:	00349793          	slli	a5,s1,0x3
    800044e8:	00f987b3          	add	a5,s3,a5
    800044ec:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    800044f0:	00349793          	slli	a5,s1,0x3
    800044f4:	00f987b3          	add	a5,s3,a5
    800044f8:	0007b503          	ld	a0,0(a5)
    800044fc:	ffffd097          	auipc	ra,0xffffd
    80004500:	510080e7          	jalr	1296(ra) # 80001a0c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004504:	0014849b          	addiw	s1,s1,1
    80004508:	0b24d063          	bge	s1,s2,800045a8 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    8000450c:	00149793          	slli	a5,s1,0x1
    80004510:	009787b3          	add	a5,a5,s1
    80004514:	00379793          	slli	a5,a5,0x3
    80004518:	00fa07b3          	add	a5,s4,a5
    8000451c:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004520:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004524:	00006717          	auipc	a4,0x6
    80004528:	f5473703          	ld	a4,-172(a4) # 8000a478 <_ZL10waitForAll>
    8000452c:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004530:	02905863          	blez	s1,80004560 <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004534:	02800513          	li	a0,40
    80004538:	ffffd097          	auipc	ra,0xffffd
    8000453c:	fe8080e7          	jalr	-24(ra) # 80001520 <_Znwm>
    80004540:	00050c93          	mv	s9,a0
    80004544:	00149c13          	slli	s8,s1,0x1
    80004548:	009c0c33          	add	s8,s8,s1
    8000454c:	003c1c13          	slli	s8,s8,0x3
    80004550:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004554:	ffffd097          	auipc	ra,0xffffd
    80004558:	518080e7          	jalr	1304(ra) # 80001a6c <_ZN6ThreadC1Ev>
    8000455c:	f79ff06f          	j	800044d4 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004560:	02800513          	li	a0,40
    80004564:	ffffd097          	auipc	ra,0xffffd
    80004568:	fbc080e7          	jalr	-68(ra) # 80001520 <_Znwm>
    8000456c:	00050c93          	mv	s9,a0
    80004570:	00149c13          	slli	s8,s1,0x1
    80004574:	009c0c33          	add	s8,s8,s1
    80004578:	003c1c13          	slli	s8,s8,0x3
    8000457c:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004580:	ffffd097          	auipc	ra,0xffffd
    80004584:	4ec080e7          	jalr	1260(ra) # 80001a6c <_ZN6ThreadC1Ev>
    80004588:	00006797          	auipc	a5,0x6
    8000458c:	da078793          	addi	a5,a5,-608 # 8000a328 <_ZTV16ProducerKeyboard+0x10>
    80004590:	00fcb023          	sd	a5,0(s9)
    80004594:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004598:	00349793          	slli	a5,s1,0x3
    8000459c:	00f987b3          	add	a5,s3,a5
    800045a0:	0197b023          	sd	s9,0(a5)
    800045a4:	f4dff06f          	j	800044f0 <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	480080e7          	jalr	1152(ra) # 80001a28 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    800045b0:	00000493          	li	s1,0
    800045b4:	00994e63          	blt	s2,s1,800045d0 <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    800045b8:	00006517          	auipc	a0,0x6
    800045bc:	ec053503          	ld	a0,-320(a0) # 8000a478 <_ZL10waitForAll>
    800045c0:	ffffd097          	auipc	ra,0xffffd
    800045c4:	530080e7          	jalr	1328(ra) # 80001af0 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    800045c8:	0014849b          	addiw	s1,s1,1
    800045cc:	fe9ff06f          	j	800045b4 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    800045d0:	00000493          	li	s1,0
    800045d4:	0080006f          	j	800045dc <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    800045d8:	0014849b          	addiw	s1,s1,1
    800045dc:	0324d263          	bge	s1,s2,80004600 <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    800045e0:	00349793          	slli	a5,s1,0x3
    800045e4:	00f987b3          	add	a5,s3,a5
    800045e8:	0007b503          	ld	a0,0(a5)
    800045ec:	fe0506e3          	beqz	a0,800045d8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    800045f0:	00053783          	ld	a5,0(a0)
    800045f4:	0087b783          	ld	a5,8(a5)
    800045f8:	000780e7          	jalr	a5
    800045fc:	fddff06f          	j	800045d8 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004600:	000b0a63          	beqz	s6,80004614 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004604:	000b3783          	ld	a5,0(s6)
    80004608:	0087b783          	ld	a5,8(a5)
    8000460c:	000b0513          	mv	a0,s6
    80004610:	000780e7          	jalr	a5
    delete waitForAll;
    80004614:	00006517          	auipc	a0,0x6
    80004618:	e6453503          	ld	a0,-412(a0) # 8000a478 <_ZL10waitForAll>
    8000461c:	00050863          	beqz	a0,8000462c <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004620:	00053783          	ld	a5,0(a0)
    80004624:	0087b783          	ld	a5,8(a5)
    80004628:	000780e7          	jalr	a5
    delete buffer;
    8000462c:	000a8e63          	beqz	s5,80004648 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004630:	000a8513          	mv	a0,s5
    80004634:	00001097          	auipc	ra,0x1
    80004638:	8a8080e7          	jalr	-1880(ra) # 80004edc <_ZN9BufferCPPD1Ev>
    8000463c:	000a8513          	mv	a0,s5
    80004640:	ffffd097          	auipc	ra,0xffffd
    80004644:	f30080e7          	jalr	-208(ra) # 80001570 <_ZdlPv>
    80004648:	000b8113          	mv	sp,s7

}
    8000464c:	f8040113          	addi	sp,s0,-128
    80004650:	07813083          	ld	ra,120(sp)
    80004654:	07013403          	ld	s0,112(sp)
    80004658:	06813483          	ld	s1,104(sp)
    8000465c:	06013903          	ld	s2,96(sp)
    80004660:	05813983          	ld	s3,88(sp)
    80004664:	05013a03          	ld	s4,80(sp)
    80004668:	04813a83          	ld	s5,72(sp)
    8000466c:	04013b03          	ld	s6,64(sp)
    80004670:	03813b83          	ld	s7,56(sp)
    80004674:	03013c03          	ld	s8,48(sp)
    80004678:	02813c83          	ld	s9,40(sp)
    8000467c:	08010113          	addi	sp,sp,128
    80004680:	00008067          	ret
    80004684:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004688:	000a8513          	mv	a0,s5
    8000468c:	ffffd097          	auipc	ra,0xffffd
    80004690:	ee4080e7          	jalr	-284(ra) # 80001570 <_ZdlPv>
    80004694:	00048513          	mv	a0,s1
    80004698:	00007097          	auipc	ra,0x7
    8000469c:	ec0080e7          	jalr	-320(ra) # 8000b558 <_Unwind_Resume>
    800046a0:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    800046a4:	00048513          	mv	a0,s1
    800046a8:	ffffd097          	auipc	ra,0xffffd
    800046ac:	ec8080e7          	jalr	-312(ra) # 80001570 <_ZdlPv>
    800046b0:	00090513          	mv	a0,s2
    800046b4:	00007097          	auipc	ra,0x7
    800046b8:	ea4080e7          	jalr	-348(ra) # 8000b558 <_Unwind_Resume>
    800046bc:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800046c0:	000b0513          	mv	a0,s6
    800046c4:	ffffd097          	auipc	ra,0xffffd
    800046c8:	eac080e7          	jalr	-340(ra) # 80001570 <_ZdlPv>
    800046cc:	00048513          	mv	a0,s1
    800046d0:	00007097          	auipc	ra,0x7
    800046d4:	e88080e7          	jalr	-376(ra) # 8000b558 <_Unwind_Resume>
    800046d8:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800046dc:	000c8513          	mv	a0,s9
    800046e0:	ffffd097          	auipc	ra,0xffffd
    800046e4:	e90080e7          	jalr	-368(ra) # 80001570 <_ZdlPv>
    800046e8:	00048513          	mv	a0,s1
    800046ec:	00007097          	auipc	ra,0x7
    800046f0:	e6c080e7          	jalr	-404(ra) # 8000b558 <_Unwind_Resume>
    800046f4:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800046f8:	000c8513          	mv	a0,s9
    800046fc:	ffffd097          	auipc	ra,0xffffd
    80004700:	e74080e7          	jalr	-396(ra) # 80001570 <_ZdlPv>
    80004704:	00048513          	mv	a0,s1
    80004708:	00007097          	auipc	ra,0x7
    8000470c:	e50080e7          	jalr	-432(ra) # 8000b558 <_Unwind_Resume>

0000000080004710 <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80004710:	ff010113          	addi	sp,sp,-16
    80004714:	00113423          	sd	ra,8(sp)
    80004718:	00813023          	sd	s0,0(sp)
    8000471c:	01010413          	addi	s0,sp,16
    80004720:	00006797          	auipc	a5,0x6
    80004724:	c5878793          	addi	a5,a5,-936 # 8000a378 <_ZTV12ConsumerSync+0x10>
    80004728:	00f53023          	sd	a5,0(a0)
    8000472c:	ffffd097          	auipc	ra,0xffffd
    80004730:	184080e7          	jalr	388(ra) # 800018b0 <_ZN6ThreadD1Ev>
    80004734:	00813083          	ld	ra,8(sp)
    80004738:	00013403          	ld	s0,0(sp)
    8000473c:	01010113          	addi	sp,sp,16
    80004740:	00008067          	ret

0000000080004744 <_ZN12ConsumerSyncD0Ev>:
    80004744:	fe010113          	addi	sp,sp,-32
    80004748:	00113c23          	sd	ra,24(sp)
    8000474c:	00813823          	sd	s0,16(sp)
    80004750:	00913423          	sd	s1,8(sp)
    80004754:	02010413          	addi	s0,sp,32
    80004758:	00050493          	mv	s1,a0
    8000475c:	00006797          	auipc	a5,0x6
    80004760:	c1c78793          	addi	a5,a5,-996 # 8000a378 <_ZTV12ConsumerSync+0x10>
    80004764:	00f53023          	sd	a5,0(a0)
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	148080e7          	jalr	328(ra) # 800018b0 <_ZN6ThreadD1Ev>
    80004770:	00048513          	mv	a0,s1
    80004774:	ffffd097          	auipc	ra,0xffffd
    80004778:	dfc080e7          	jalr	-516(ra) # 80001570 <_ZdlPv>
    8000477c:	01813083          	ld	ra,24(sp)
    80004780:	01013403          	ld	s0,16(sp)
    80004784:	00813483          	ld	s1,8(sp)
    80004788:	02010113          	addi	sp,sp,32
    8000478c:	00008067          	ret

0000000080004790 <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80004790:	ff010113          	addi	sp,sp,-16
    80004794:	00113423          	sd	ra,8(sp)
    80004798:	00813023          	sd	s0,0(sp)
    8000479c:	01010413          	addi	s0,sp,16
    800047a0:	00006797          	auipc	a5,0x6
    800047a4:	bb078793          	addi	a5,a5,-1104 # 8000a350 <_ZTV12ProducerSync+0x10>
    800047a8:	00f53023          	sd	a5,0(a0)
    800047ac:	ffffd097          	auipc	ra,0xffffd
    800047b0:	104080e7          	jalr	260(ra) # 800018b0 <_ZN6ThreadD1Ev>
    800047b4:	00813083          	ld	ra,8(sp)
    800047b8:	00013403          	ld	s0,0(sp)
    800047bc:	01010113          	addi	sp,sp,16
    800047c0:	00008067          	ret

00000000800047c4 <_ZN12ProducerSyncD0Ev>:
    800047c4:	fe010113          	addi	sp,sp,-32
    800047c8:	00113c23          	sd	ra,24(sp)
    800047cc:	00813823          	sd	s0,16(sp)
    800047d0:	00913423          	sd	s1,8(sp)
    800047d4:	02010413          	addi	s0,sp,32
    800047d8:	00050493          	mv	s1,a0
    800047dc:	00006797          	auipc	a5,0x6
    800047e0:	b7478793          	addi	a5,a5,-1164 # 8000a350 <_ZTV12ProducerSync+0x10>
    800047e4:	00f53023          	sd	a5,0(a0)
    800047e8:	ffffd097          	auipc	ra,0xffffd
    800047ec:	0c8080e7          	jalr	200(ra) # 800018b0 <_ZN6ThreadD1Ev>
    800047f0:	00048513          	mv	a0,s1
    800047f4:	ffffd097          	auipc	ra,0xffffd
    800047f8:	d7c080e7          	jalr	-644(ra) # 80001570 <_ZdlPv>
    800047fc:	01813083          	ld	ra,24(sp)
    80004800:	01013403          	ld	s0,16(sp)
    80004804:	00813483          	ld	s1,8(sp)
    80004808:	02010113          	addi	sp,sp,32
    8000480c:	00008067          	ret

0000000080004810 <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80004810:	ff010113          	addi	sp,sp,-16
    80004814:	00113423          	sd	ra,8(sp)
    80004818:	00813023          	sd	s0,0(sp)
    8000481c:	01010413          	addi	s0,sp,16
    80004820:	00006797          	auipc	a5,0x6
    80004824:	b0878793          	addi	a5,a5,-1272 # 8000a328 <_ZTV16ProducerKeyboard+0x10>
    80004828:	00f53023          	sd	a5,0(a0)
    8000482c:	ffffd097          	auipc	ra,0xffffd
    80004830:	084080e7          	jalr	132(ra) # 800018b0 <_ZN6ThreadD1Ev>
    80004834:	00813083          	ld	ra,8(sp)
    80004838:	00013403          	ld	s0,0(sp)
    8000483c:	01010113          	addi	sp,sp,16
    80004840:	00008067          	ret

0000000080004844 <_ZN16ProducerKeyboardD0Ev>:
    80004844:	fe010113          	addi	sp,sp,-32
    80004848:	00113c23          	sd	ra,24(sp)
    8000484c:	00813823          	sd	s0,16(sp)
    80004850:	00913423          	sd	s1,8(sp)
    80004854:	02010413          	addi	s0,sp,32
    80004858:	00050493          	mv	s1,a0
    8000485c:	00006797          	auipc	a5,0x6
    80004860:	acc78793          	addi	a5,a5,-1332 # 8000a328 <_ZTV16ProducerKeyboard+0x10>
    80004864:	00f53023          	sd	a5,0(a0)
    80004868:	ffffd097          	auipc	ra,0xffffd
    8000486c:	048080e7          	jalr	72(ra) # 800018b0 <_ZN6ThreadD1Ev>
    80004870:	00048513          	mv	a0,s1
    80004874:	ffffd097          	auipc	ra,0xffffd
    80004878:	cfc080e7          	jalr	-772(ra) # 80001570 <_ZdlPv>
    8000487c:	01813083          	ld	ra,24(sp)
    80004880:	01013403          	ld	s0,16(sp)
    80004884:	00813483          	ld	s1,8(sp)
    80004888:	02010113          	addi	sp,sp,32
    8000488c:	00008067          	ret

0000000080004890 <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80004890:	ff010113          	addi	sp,sp,-16
    80004894:	00113423          	sd	ra,8(sp)
    80004898:	00813023          	sd	s0,0(sp)
    8000489c:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800048a0:	02053583          	ld	a1,32(a0)
    800048a4:	fffff097          	auipc	ra,0xfffff
    800048a8:	7e4080e7          	jalr	2020(ra) # 80004088 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    800048ac:	00813083          	ld	ra,8(sp)
    800048b0:	00013403          	ld	s0,0(sp)
    800048b4:	01010113          	addi	sp,sp,16
    800048b8:	00008067          	ret

00000000800048bc <_ZN12ProducerSync3runEv>:
    void run() override {
    800048bc:	ff010113          	addi	sp,sp,-16
    800048c0:	00113423          	sd	ra,8(sp)
    800048c4:	00813023          	sd	s0,0(sp)
    800048c8:	01010413          	addi	s0,sp,16
        producer(td);
    800048cc:	02053583          	ld	a1,32(a0)
    800048d0:	00000097          	auipc	ra,0x0
    800048d4:	878080e7          	jalr	-1928(ra) # 80004148 <_ZN12ProducerSync8producerEPv>
    }
    800048d8:	00813083          	ld	ra,8(sp)
    800048dc:	00013403          	ld	s0,0(sp)
    800048e0:	01010113          	addi	sp,sp,16
    800048e4:	00008067          	ret

00000000800048e8 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800048e8:	ff010113          	addi	sp,sp,-16
    800048ec:	00113423          	sd	ra,8(sp)
    800048f0:	00813023          	sd	s0,0(sp)
    800048f4:	01010413          	addi	s0,sp,16
        consumer(td);
    800048f8:	02053583          	ld	a1,32(a0)
    800048fc:	00000097          	auipc	ra,0x0
    80004900:	8e0080e7          	jalr	-1824(ra) # 800041dc <_ZN12ConsumerSync8consumerEPv>
    }
    80004904:	00813083          	ld	ra,8(sp)
    80004908:	00013403          	ld	s0,0(sp)
    8000490c:	01010113          	addi	sp,sp,16
    80004910:	00008067          	ret

0000000080004914 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004914:	fe010113          	addi	sp,sp,-32
    80004918:	00113c23          	sd	ra,24(sp)
    8000491c:	00813823          	sd	s0,16(sp)
    80004920:	00913423          	sd	s1,8(sp)
    80004924:	02010413          	addi	s0,sp,32
    80004928:	00050493          	mv	s1,a0
    LOCK();
    8000492c:	00100613          	li	a2,1
    80004930:	00000593          	li	a1,0
    80004934:	00006517          	auipc	a0,0x6
    80004938:	b4c50513          	addi	a0,a0,-1204 # 8000a480 <lockPrint>
    8000493c:	ffffd097          	auipc	ra,0xffffd
    80004940:	8e8080e7          	jalr	-1816(ra) # 80001224 <copy_and_swap>
    80004944:	00050863          	beqz	a0,80004954 <_Z11printStringPKc+0x40>
    80004948:	ffffd097          	auipc	ra,0xffffd
    8000494c:	9e4080e7          	jalr	-1564(ra) # 8000132c <_Z15thread_dispatchv>
    80004950:	fddff06f          	j	8000492c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004954:	0004c503          	lbu	a0,0(s1)
    80004958:	00050a63          	beqz	a0,8000496c <_Z11printStringPKc+0x58>
    {
        putc(*string);
    8000495c:	ffffd097          	auipc	ra,0xffffd
    80004960:	b68080e7          	jalr	-1176(ra) # 800014c4 <_Z4putcc>
        string++;
    80004964:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004968:	fedff06f          	j	80004954 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    8000496c:	00000613          	li	a2,0
    80004970:	00100593          	li	a1,1
    80004974:	00006517          	auipc	a0,0x6
    80004978:	b0c50513          	addi	a0,a0,-1268 # 8000a480 <lockPrint>
    8000497c:	ffffd097          	auipc	ra,0xffffd
    80004980:	8a8080e7          	jalr	-1880(ra) # 80001224 <copy_and_swap>
    80004984:	fe0514e3          	bnez	a0,8000496c <_Z11printStringPKc+0x58>
}
    80004988:	01813083          	ld	ra,24(sp)
    8000498c:	01013403          	ld	s0,16(sp)
    80004990:	00813483          	ld	s1,8(sp)
    80004994:	02010113          	addi	sp,sp,32
    80004998:	00008067          	ret

000000008000499c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    8000499c:	fd010113          	addi	sp,sp,-48
    800049a0:	02113423          	sd	ra,40(sp)
    800049a4:	02813023          	sd	s0,32(sp)
    800049a8:	00913c23          	sd	s1,24(sp)
    800049ac:	01213823          	sd	s2,16(sp)
    800049b0:	01313423          	sd	s3,8(sp)
    800049b4:	01413023          	sd	s4,0(sp)
    800049b8:	03010413          	addi	s0,sp,48
    800049bc:	00050993          	mv	s3,a0
    800049c0:	00058a13          	mv	s4,a1
    LOCK();
    800049c4:	00100613          	li	a2,1
    800049c8:	00000593          	li	a1,0
    800049cc:	00006517          	auipc	a0,0x6
    800049d0:	ab450513          	addi	a0,a0,-1356 # 8000a480 <lockPrint>
    800049d4:	ffffd097          	auipc	ra,0xffffd
    800049d8:	850080e7          	jalr	-1968(ra) # 80001224 <copy_and_swap>
    800049dc:	00050863          	beqz	a0,800049ec <_Z9getStringPci+0x50>
    800049e0:	ffffd097          	auipc	ra,0xffffd
    800049e4:	94c080e7          	jalr	-1716(ra) # 8000132c <_Z15thread_dispatchv>
    800049e8:	fddff06f          	j	800049c4 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800049ec:	00000913          	li	s2,0
    800049f0:	00090493          	mv	s1,s2
    800049f4:	0019091b          	addiw	s2,s2,1
    800049f8:	03495a63          	bge	s2,s4,80004a2c <_Z9getStringPci+0x90>
        cc = getc();
    800049fc:	ffffd097          	auipc	ra,0xffffd
    80004a00:	a94080e7          	jalr	-1388(ra) # 80001490 <_Z4getcv>
        if(cc < 1)
    80004a04:	02050463          	beqz	a0,80004a2c <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80004a08:	009984b3          	add	s1,s3,s1
    80004a0c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004a10:	00a00793          	li	a5,10
    80004a14:	00f50a63          	beq	a0,a5,80004a28 <_Z9getStringPci+0x8c>
    80004a18:	00d00793          	li	a5,13
    80004a1c:	fcf51ae3          	bne	a0,a5,800049f0 <_Z9getStringPci+0x54>
        buf[i++] = c;
    80004a20:	00090493          	mv	s1,s2
    80004a24:	0080006f          	j	80004a2c <_Z9getStringPci+0x90>
    80004a28:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004a2c:	009984b3          	add	s1,s3,s1
    80004a30:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004a34:	00000613          	li	a2,0
    80004a38:	00100593          	li	a1,1
    80004a3c:	00006517          	auipc	a0,0x6
    80004a40:	a4450513          	addi	a0,a0,-1468 # 8000a480 <lockPrint>
    80004a44:	ffffc097          	auipc	ra,0xffffc
    80004a48:	7e0080e7          	jalr	2016(ra) # 80001224 <copy_and_swap>
    80004a4c:	fe0514e3          	bnez	a0,80004a34 <_Z9getStringPci+0x98>
    return buf;
}
    80004a50:	00098513          	mv	a0,s3
    80004a54:	02813083          	ld	ra,40(sp)
    80004a58:	02013403          	ld	s0,32(sp)
    80004a5c:	01813483          	ld	s1,24(sp)
    80004a60:	01013903          	ld	s2,16(sp)
    80004a64:	00813983          	ld	s3,8(sp)
    80004a68:	00013a03          	ld	s4,0(sp)
    80004a6c:	03010113          	addi	sp,sp,48
    80004a70:	00008067          	ret

0000000080004a74 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004a74:	ff010113          	addi	sp,sp,-16
    80004a78:	00813423          	sd	s0,8(sp)
    80004a7c:	01010413          	addi	s0,sp,16
    80004a80:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004a84:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004a88:	0006c603          	lbu	a2,0(a3)
    80004a8c:	fd06071b          	addiw	a4,a2,-48
    80004a90:	0ff77713          	andi	a4,a4,255
    80004a94:	00900793          	li	a5,9
    80004a98:	02e7e063          	bltu	a5,a4,80004ab8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004a9c:	0025179b          	slliw	a5,a0,0x2
    80004aa0:	00a787bb          	addw	a5,a5,a0
    80004aa4:	0017979b          	slliw	a5,a5,0x1
    80004aa8:	00168693          	addi	a3,a3,1
    80004aac:	00c787bb          	addw	a5,a5,a2
    80004ab0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004ab4:	fd5ff06f          	j	80004a88 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004ab8:	00813403          	ld	s0,8(sp)
    80004abc:	01010113          	addi	sp,sp,16
    80004ac0:	00008067          	ret

0000000080004ac4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004ac4:	fc010113          	addi	sp,sp,-64
    80004ac8:	02113c23          	sd	ra,56(sp)
    80004acc:	02813823          	sd	s0,48(sp)
    80004ad0:	02913423          	sd	s1,40(sp)
    80004ad4:	03213023          	sd	s2,32(sp)
    80004ad8:	01313c23          	sd	s3,24(sp)
    80004adc:	04010413          	addi	s0,sp,64
    80004ae0:	00050493          	mv	s1,a0
    80004ae4:	00058913          	mv	s2,a1
    80004ae8:	00060993          	mv	s3,a2
    LOCK();
    80004aec:	00100613          	li	a2,1
    80004af0:	00000593          	li	a1,0
    80004af4:	00006517          	auipc	a0,0x6
    80004af8:	98c50513          	addi	a0,a0,-1652 # 8000a480 <lockPrint>
    80004afc:	ffffc097          	auipc	ra,0xffffc
    80004b00:	728080e7          	jalr	1832(ra) # 80001224 <copy_and_swap>
    80004b04:	00050863          	beqz	a0,80004b14 <_Z8printIntiii+0x50>
    80004b08:	ffffd097          	auipc	ra,0xffffd
    80004b0c:	824080e7          	jalr	-2012(ra) # 8000132c <_Z15thread_dispatchv>
    80004b10:	fddff06f          	j	80004aec <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80004b14:	00098463          	beqz	s3,80004b1c <_Z8printIntiii+0x58>
    80004b18:	0804c463          	bltz	s1,80004ba0 <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80004b1c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80004b20:	00000593          	li	a1,0
    }

    i = 0;
    80004b24:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80004b28:	0009079b          	sext.w	a5,s2
    80004b2c:	0325773b          	remuw	a4,a0,s2
    80004b30:	00048613          	mv	a2,s1
    80004b34:	0014849b          	addiw	s1,s1,1
    80004b38:	02071693          	slli	a3,a4,0x20
    80004b3c:	0206d693          	srli	a3,a3,0x20
    80004b40:	00006717          	auipc	a4,0x6
    80004b44:	85070713          	addi	a4,a4,-1968 # 8000a390 <digits>
    80004b48:	00d70733          	add	a4,a4,a3
    80004b4c:	00074683          	lbu	a3,0(a4)
    80004b50:	fd040713          	addi	a4,s0,-48
    80004b54:	00c70733          	add	a4,a4,a2
    80004b58:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004b5c:	0005071b          	sext.w	a4,a0
    80004b60:	0325553b          	divuw	a0,a0,s2
    80004b64:	fcf772e3          	bgeu	a4,a5,80004b28 <_Z8printIntiii+0x64>
    if(neg)
    80004b68:	00058c63          	beqz	a1,80004b80 <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004b6c:	fd040793          	addi	a5,s0,-48
    80004b70:	009784b3          	add	s1,a5,s1
    80004b74:	02d00793          	li	a5,45
    80004b78:	fef48823          	sb	a5,-16(s1)
    80004b7c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80004b80:	fff4849b          	addiw	s1,s1,-1
    80004b84:	0204c463          	bltz	s1,80004bac <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004b88:	fd040793          	addi	a5,s0,-48
    80004b8c:	009787b3          	add	a5,a5,s1
    80004b90:	ff07c503          	lbu	a0,-16(a5)
    80004b94:	ffffd097          	auipc	ra,0xffffd
    80004b98:	930080e7          	jalr	-1744(ra) # 800014c4 <_Z4putcc>
    80004b9c:	fe5ff06f          	j	80004b80 <_Z8printIntiii+0xbc>
        x = -xx;
    80004ba0:	4090053b          	negw	a0,s1
        neg = 1;
    80004ba4:	00100593          	li	a1,1
        x = -xx;
    80004ba8:	f7dff06f          	j	80004b24 <_Z8printIntiii+0x60>

    UNLOCK();
    80004bac:	00000613          	li	a2,0
    80004bb0:	00100593          	li	a1,1
    80004bb4:	00006517          	auipc	a0,0x6
    80004bb8:	8cc50513          	addi	a0,a0,-1844 # 8000a480 <lockPrint>
    80004bbc:	ffffc097          	auipc	ra,0xffffc
    80004bc0:	668080e7          	jalr	1640(ra) # 80001224 <copy_and_swap>
    80004bc4:	fe0514e3          	bnez	a0,80004bac <_Z8printIntiii+0xe8>
    80004bc8:	03813083          	ld	ra,56(sp)
    80004bcc:	03013403          	ld	s0,48(sp)
    80004bd0:	02813483          	ld	s1,40(sp)
    80004bd4:	02013903          	ld	s2,32(sp)
    80004bd8:	01813983          	ld	s3,24(sp)
    80004bdc:	04010113          	addi	sp,sp,64
    80004be0:	00008067          	ret

0000000080004be4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004be4:	fd010113          	addi	sp,sp,-48
    80004be8:	02113423          	sd	ra,40(sp)
    80004bec:	02813023          	sd	s0,32(sp)
    80004bf0:	00913c23          	sd	s1,24(sp)
    80004bf4:	01213823          	sd	s2,16(sp)
    80004bf8:	01313423          	sd	s3,8(sp)
    80004bfc:	03010413          	addi	s0,sp,48
    80004c00:	00050493          	mv	s1,a0
    80004c04:	00058913          	mv	s2,a1
    80004c08:	0015879b          	addiw	a5,a1,1
    80004c0c:	0007851b          	sext.w	a0,a5
    80004c10:	00f4a023          	sw	a5,0(s1)
    80004c14:	0004a823          	sw	zero,16(s1)
    80004c18:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004c1c:	00251513          	slli	a0,a0,0x2
    80004c20:	ffffc097          	auipc	ra,0xffffc
    80004c24:	624080e7          	jalr	1572(ra) # 80001244 <_Z9mem_allocm>
    80004c28:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80004c2c:	01000513          	li	a0,16
    80004c30:	ffffd097          	auipc	ra,0xffffd
    80004c34:	8f0080e7          	jalr	-1808(ra) # 80001520 <_Znwm>
    80004c38:	00050993          	mv	s3,a0
    80004c3c:	00000593          	li	a1,0
    80004c40:	ffffd097          	auipc	ra,0xffffd
    80004c44:	e78080e7          	jalr	-392(ra) # 80001ab8 <_ZN9SemaphoreC1Ej>
    80004c48:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80004c4c:	01000513          	li	a0,16
    80004c50:	ffffd097          	auipc	ra,0xffffd
    80004c54:	8d0080e7          	jalr	-1840(ra) # 80001520 <_Znwm>
    80004c58:	00050993          	mv	s3,a0
    80004c5c:	00090593          	mv	a1,s2
    80004c60:	ffffd097          	auipc	ra,0xffffd
    80004c64:	e58080e7          	jalr	-424(ra) # 80001ab8 <_ZN9SemaphoreC1Ej>
    80004c68:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004c6c:	01000513          	li	a0,16
    80004c70:	ffffd097          	auipc	ra,0xffffd
    80004c74:	8b0080e7          	jalr	-1872(ra) # 80001520 <_Znwm>
    80004c78:	00050913          	mv	s2,a0
    80004c7c:	00100593          	li	a1,1
    80004c80:	ffffd097          	auipc	ra,0xffffd
    80004c84:	e38080e7          	jalr	-456(ra) # 80001ab8 <_ZN9SemaphoreC1Ej>
    80004c88:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004c8c:	01000513          	li	a0,16
    80004c90:	ffffd097          	auipc	ra,0xffffd
    80004c94:	890080e7          	jalr	-1904(ra) # 80001520 <_Znwm>
    80004c98:	00050913          	mv	s2,a0
    80004c9c:	00100593          	li	a1,1
    80004ca0:	ffffd097          	auipc	ra,0xffffd
    80004ca4:	e18080e7          	jalr	-488(ra) # 80001ab8 <_ZN9SemaphoreC1Ej>
    80004ca8:	0324b823          	sd	s2,48(s1)
}
    80004cac:	02813083          	ld	ra,40(sp)
    80004cb0:	02013403          	ld	s0,32(sp)
    80004cb4:	01813483          	ld	s1,24(sp)
    80004cb8:	01013903          	ld	s2,16(sp)
    80004cbc:	00813983          	ld	s3,8(sp)
    80004cc0:	03010113          	addi	sp,sp,48
    80004cc4:	00008067          	ret
    80004cc8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004ccc:	00098513          	mv	a0,s3
    80004cd0:	ffffd097          	auipc	ra,0xffffd
    80004cd4:	8a0080e7          	jalr	-1888(ra) # 80001570 <_ZdlPv>
    80004cd8:	00048513          	mv	a0,s1
    80004cdc:	00007097          	auipc	ra,0x7
    80004ce0:	87c080e7          	jalr	-1924(ra) # 8000b558 <_Unwind_Resume>
    80004ce4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004ce8:	00098513          	mv	a0,s3
    80004cec:	ffffd097          	auipc	ra,0xffffd
    80004cf0:	884080e7          	jalr	-1916(ra) # 80001570 <_ZdlPv>
    80004cf4:	00048513          	mv	a0,s1
    80004cf8:	00007097          	auipc	ra,0x7
    80004cfc:	860080e7          	jalr	-1952(ra) # 8000b558 <_Unwind_Resume>
    80004d00:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80004d04:	00090513          	mv	a0,s2
    80004d08:	ffffd097          	auipc	ra,0xffffd
    80004d0c:	868080e7          	jalr	-1944(ra) # 80001570 <_ZdlPv>
    80004d10:	00048513          	mv	a0,s1
    80004d14:	00007097          	auipc	ra,0x7
    80004d18:	844080e7          	jalr	-1980(ra) # 8000b558 <_Unwind_Resume>
    80004d1c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80004d20:	00090513          	mv	a0,s2
    80004d24:	ffffd097          	auipc	ra,0xffffd
    80004d28:	84c080e7          	jalr	-1972(ra) # 80001570 <_ZdlPv>
    80004d2c:	00048513          	mv	a0,s1
    80004d30:	00007097          	auipc	ra,0x7
    80004d34:	828080e7          	jalr	-2008(ra) # 8000b558 <_Unwind_Resume>

0000000080004d38 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80004d38:	fe010113          	addi	sp,sp,-32
    80004d3c:	00113c23          	sd	ra,24(sp)
    80004d40:	00813823          	sd	s0,16(sp)
    80004d44:	00913423          	sd	s1,8(sp)
    80004d48:	01213023          	sd	s2,0(sp)
    80004d4c:	02010413          	addi	s0,sp,32
    80004d50:	00050493          	mv	s1,a0
    80004d54:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004d58:	01853503          	ld	a0,24(a0)
    80004d5c:	ffffd097          	auipc	ra,0xffffd
    80004d60:	d94080e7          	jalr	-620(ra) # 80001af0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004d64:	0304b503          	ld	a0,48(s1)
    80004d68:	ffffd097          	auipc	ra,0xffffd
    80004d6c:	d88080e7          	jalr	-632(ra) # 80001af0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80004d70:	0084b783          	ld	a5,8(s1)
    80004d74:	0144a703          	lw	a4,20(s1)
    80004d78:	00271713          	slli	a4,a4,0x2
    80004d7c:	00e787b3          	add	a5,a5,a4
    80004d80:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004d84:	0144a783          	lw	a5,20(s1)
    80004d88:	0017879b          	addiw	a5,a5,1
    80004d8c:	0004a703          	lw	a4,0(s1)
    80004d90:	02e7e7bb          	remw	a5,a5,a4
    80004d94:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004d98:	0304b503          	ld	a0,48(s1)
    80004d9c:	ffffd097          	auipc	ra,0xffffd
    80004da0:	d80080e7          	jalr	-640(ra) # 80001b1c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004da4:	0204b503          	ld	a0,32(s1)
    80004da8:	ffffd097          	auipc	ra,0xffffd
    80004dac:	d74080e7          	jalr	-652(ra) # 80001b1c <_ZN9Semaphore6signalEv>

}
    80004db0:	01813083          	ld	ra,24(sp)
    80004db4:	01013403          	ld	s0,16(sp)
    80004db8:	00813483          	ld	s1,8(sp)
    80004dbc:	00013903          	ld	s2,0(sp)
    80004dc0:	02010113          	addi	sp,sp,32
    80004dc4:	00008067          	ret

0000000080004dc8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004dc8:	fe010113          	addi	sp,sp,-32
    80004dcc:	00113c23          	sd	ra,24(sp)
    80004dd0:	00813823          	sd	s0,16(sp)
    80004dd4:	00913423          	sd	s1,8(sp)
    80004dd8:	01213023          	sd	s2,0(sp)
    80004ddc:	02010413          	addi	s0,sp,32
    80004de0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004de4:	02053503          	ld	a0,32(a0)
    80004de8:	ffffd097          	auipc	ra,0xffffd
    80004dec:	d08080e7          	jalr	-760(ra) # 80001af0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80004df0:	0284b503          	ld	a0,40(s1)
    80004df4:	ffffd097          	auipc	ra,0xffffd
    80004df8:	cfc080e7          	jalr	-772(ra) # 80001af0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80004dfc:	0084b703          	ld	a4,8(s1)
    80004e00:	0104a783          	lw	a5,16(s1)
    80004e04:	00279693          	slli	a3,a5,0x2
    80004e08:	00d70733          	add	a4,a4,a3
    80004e0c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80004e10:	0017879b          	addiw	a5,a5,1
    80004e14:	0004a703          	lw	a4,0(s1)
    80004e18:	02e7e7bb          	remw	a5,a5,a4
    80004e1c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80004e20:	0284b503          	ld	a0,40(s1)
    80004e24:	ffffd097          	auipc	ra,0xffffd
    80004e28:	cf8080e7          	jalr	-776(ra) # 80001b1c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80004e2c:	0184b503          	ld	a0,24(s1)
    80004e30:	ffffd097          	auipc	ra,0xffffd
    80004e34:	cec080e7          	jalr	-788(ra) # 80001b1c <_ZN9Semaphore6signalEv>

    return ret;
}
    80004e38:	00090513          	mv	a0,s2
    80004e3c:	01813083          	ld	ra,24(sp)
    80004e40:	01013403          	ld	s0,16(sp)
    80004e44:	00813483          	ld	s1,8(sp)
    80004e48:	00013903          	ld	s2,0(sp)
    80004e4c:	02010113          	addi	sp,sp,32
    80004e50:	00008067          	ret

0000000080004e54 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004e54:	fe010113          	addi	sp,sp,-32
    80004e58:	00113c23          	sd	ra,24(sp)
    80004e5c:	00813823          	sd	s0,16(sp)
    80004e60:	00913423          	sd	s1,8(sp)
    80004e64:	01213023          	sd	s2,0(sp)
    80004e68:	02010413          	addi	s0,sp,32
    80004e6c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80004e70:	02853503          	ld	a0,40(a0)
    80004e74:	ffffd097          	auipc	ra,0xffffd
    80004e78:	c7c080e7          	jalr	-900(ra) # 80001af0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004e7c:	0304b503          	ld	a0,48(s1)
    80004e80:	ffffd097          	auipc	ra,0xffffd
    80004e84:	c70080e7          	jalr	-912(ra) # 80001af0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004e88:	0144a783          	lw	a5,20(s1)
    80004e8c:	0104a903          	lw	s2,16(s1)
    80004e90:	0327ce63          	blt	a5,s2,80004ecc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004e94:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004e98:	0304b503          	ld	a0,48(s1)
    80004e9c:	ffffd097          	auipc	ra,0xffffd
    80004ea0:	c80080e7          	jalr	-896(ra) # 80001b1c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004ea4:	0284b503          	ld	a0,40(s1)
    80004ea8:	ffffd097          	auipc	ra,0xffffd
    80004eac:	c74080e7          	jalr	-908(ra) # 80001b1c <_ZN9Semaphore6signalEv>

    return ret;
}
    80004eb0:	00090513          	mv	a0,s2
    80004eb4:	01813083          	ld	ra,24(sp)
    80004eb8:	01013403          	ld	s0,16(sp)
    80004ebc:	00813483          	ld	s1,8(sp)
    80004ec0:	00013903          	ld	s2,0(sp)
    80004ec4:	02010113          	addi	sp,sp,32
    80004ec8:	00008067          	ret
        ret = cap - head + tail;
    80004ecc:	0004a703          	lw	a4,0(s1)
    80004ed0:	4127093b          	subw	s2,a4,s2
    80004ed4:	00f9093b          	addw	s2,s2,a5
    80004ed8:	fc1ff06f          	j	80004e98 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004edc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004edc:	fe010113          	addi	sp,sp,-32
    80004ee0:	00113c23          	sd	ra,24(sp)
    80004ee4:	00813823          	sd	s0,16(sp)
    80004ee8:	00913423          	sd	s1,8(sp)
    80004eec:	02010413          	addi	s0,sp,32
    80004ef0:	00050493          	mv	s1,a0
    Console::putc('\n');
    80004ef4:	00a00513          	li	a0,10
    80004ef8:	ffffd097          	auipc	ra,0xffffd
    80004efc:	ca4080e7          	jalr	-860(ra) # 80001b9c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80004f00:	00003517          	auipc	a0,0x3
    80004f04:	44850513          	addi	a0,a0,1096 # 80008348 <CONSOLE_STATUS+0x338>
    80004f08:	00000097          	auipc	ra,0x0
    80004f0c:	a0c080e7          	jalr	-1524(ra) # 80004914 <_Z11printStringPKc>
    while (getCnt()) {
    80004f10:	00048513          	mv	a0,s1
    80004f14:	00000097          	auipc	ra,0x0
    80004f18:	f40080e7          	jalr	-192(ra) # 80004e54 <_ZN9BufferCPP6getCntEv>
    80004f1c:	02050c63          	beqz	a0,80004f54 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80004f20:	0084b783          	ld	a5,8(s1)
    80004f24:	0104a703          	lw	a4,16(s1)
    80004f28:	00271713          	slli	a4,a4,0x2
    80004f2c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80004f30:	0007c503          	lbu	a0,0(a5)
    80004f34:	ffffd097          	auipc	ra,0xffffd
    80004f38:	c68080e7          	jalr	-920(ra) # 80001b9c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80004f3c:	0104a783          	lw	a5,16(s1)
    80004f40:	0017879b          	addiw	a5,a5,1
    80004f44:	0004a703          	lw	a4,0(s1)
    80004f48:	02e7e7bb          	remw	a5,a5,a4
    80004f4c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80004f50:	fc1ff06f          	j	80004f10 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004f54:	02100513          	li	a0,33
    80004f58:	ffffd097          	auipc	ra,0xffffd
    80004f5c:	c44080e7          	jalr	-956(ra) # 80001b9c <_ZN7Console4putcEc>
    Console::putc('\n');
    80004f60:	00a00513          	li	a0,10
    80004f64:	ffffd097          	auipc	ra,0xffffd
    80004f68:	c38080e7          	jalr	-968(ra) # 80001b9c <_ZN7Console4putcEc>
    mem_free(buffer);
    80004f6c:	0084b503          	ld	a0,8(s1)
    80004f70:	ffffc097          	auipc	ra,0xffffc
    80004f74:	310080e7          	jalr	784(ra) # 80001280 <_Z8mem_freePv>
    delete itemAvailable;
    80004f78:	0204b503          	ld	a0,32(s1)
    80004f7c:	00050863          	beqz	a0,80004f8c <_ZN9BufferCPPD1Ev+0xb0>
    80004f80:	00053783          	ld	a5,0(a0)
    80004f84:	0087b783          	ld	a5,8(a5)
    80004f88:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004f8c:	0184b503          	ld	a0,24(s1)
    80004f90:	00050863          	beqz	a0,80004fa0 <_ZN9BufferCPPD1Ev+0xc4>
    80004f94:	00053783          	ld	a5,0(a0)
    80004f98:	0087b783          	ld	a5,8(a5)
    80004f9c:	000780e7          	jalr	a5
    delete mutexTail;
    80004fa0:	0304b503          	ld	a0,48(s1)
    80004fa4:	00050863          	beqz	a0,80004fb4 <_ZN9BufferCPPD1Ev+0xd8>
    80004fa8:	00053783          	ld	a5,0(a0)
    80004fac:	0087b783          	ld	a5,8(a5)
    80004fb0:	000780e7          	jalr	a5
    delete mutexHead;
    80004fb4:	0284b503          	ld	a0,40(s1)
    80004fb8:	00050863          	beqz	a0,80004fc8 <_ZN9BufferCPPD1Ev+0xec>
    80004fbc:	00053783          	ld	a5,0(a0)
    80004fc0:	0087b783          	ld	a5,8(a5)
    80004fc4:	000780e7          	jalr	a5
}
    80004fc8:	01813083          	ld	ra,24(sp)
    80004fcc:	01013403          	ld	s0,16(sp)
    80004fd0:	00813483          	ld	s1,8(sp)
    80004fd4:	02010113          	addi	sp,sp,32
    80004fd8:	00008067          	ret

0000000080004fdc <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80004fdc:	fe010113          	addi	sp,sp,-32
    80004fe0:	00113c23          	sd	ra,24(sp)
    80004fe4:	00813823          	sd	s0,16(sp)
    80004fe8:	00913423          	sd	s1,8(sp)
    80004fec:	01213023          	sd	s2,0(sp)
    80004ff0:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    80004ff4:	00003517          	auipc	a0,0x3
    80004ff8:	36c50513          	addi	a0,a0,876 # 80008360 <CONSOLE_STATUS+0x350>
    80004ffc:	00000097          	auipc	ra,0x0
    80005000:	918080e7          	jalr	-1768(ra) # 80004914 <_Z11printStringPKc>
    int test = getc() - '0';
    80005004:	ffffc097          	auipc	ra,0xffffc
    80005008:	48c080e7          	jalr	1164(ra) # 80001490 <_Z4getcv>
    8000500c:	00050913          	mv	s2,a0
    80005010:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005014:	ffffc097          	auipc	ra,0xffffc
    80005018:	47c080e7          	jalr	1148(ra) # 80001490 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    8000501c:	fcb9091b          	addiw	s2,s2,-53
    80005020:	00100793          	li	a5,1
    80005024:	0327f463          	bgeu	a5,s2,8000504c <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005028:	00700793          	li	a5,7
    8000502c:	0e97e263          	bltu	a5,s1,80005110 <_Z8userMainv+0x134>
    80005030:	00249493          	slli	s1,s1,0x2
    80005034:	00003717          	auipc	a4,0x3
    80005038:	54470713          	addi	a4,a4,1348 # 80008578 <CONSOLE_STATUS+0x568>
    8000503c:	00e484b3          	add	s1,s1,a4
    80005040:	0004a783          	lw	a5,0(s1)
    80005044:	00e787b3          	add	a5,a5,a4
    80005048:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    8000504c:	00003517          	auipc	a0,0x3
    80005050:	33450513          	addi	a0,a0,820 # 80008380 <CONSOLE_STATUS+0x370>
    80005054:	00000097          	auipc	ra,0x0
    80005058:	8c0080e7          	jalr	-1856(ra) # 80004914 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    8000505c:	01813083          	ld	ra,24(sp)
    80005060:	01013403          	ld	s0,16(sp)
    80005064:	00813483          	ld	s1,8(sp)
    80005068:	00013903          	ld	s2,0(sp)
    8000506c:	02010113          	addi	sp,sp,32
    80005070:	00008067          	ret
            Threads_C_API_test();
    80005074:	fffff097          	auipc	ra,0xfffff
    80005078:	f18080e7          	jalr	-232(ra) # 80003f8c <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000507c:	00003517          	auipc	a0,0x3
    80005080:	33450513          	addi	a0,a0,820 # 800083b0 <CONSOLE_STATUS+0x3a0>
    80005084:	00000097          	auipc	ra,0x0
    80005088:	890080e7          	jalr	-1904(ra) # 80004914 <_Z11printStringPKc>
            break;
    8000508c:	fd1ff06f          	j	8000505c <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    80005090:	ffffe097          	auipc	ra,0xffffe
    80005094:	ddc080e7          	jalr	-548(ra) # 80002e6c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80005098:	00003517          	auipc	a0,0x3
    8000509c:	35850513          	addi	a0,a0,856 # 800083f0 <CONSOLE_STATUS+0x3e0>
    800050a0:	00000097          	auipc	ra,0x0
    800050a4:	874080e7          	jalr	-1932(ra) # 80004914 <_Z11printStringPKc>
            break;
    800050a8:	fb5ff06f          	j	8000505c <_Z8userMainv+0x80>
            producerConsumer_C_API();
    800050ac:	ffffd097          	auipc	ra,0xffffd
    800050b0:	614080e7          	jalr	1556(ra) # 800026c0 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800050b4:	00003517          	auipc	a0,0x3
    800050b8:	37c50513          	addi	a0,a0,892 # 80008430 <CONSOLE_STATUS+0x420>
    800050bc:	00000097          	auipc	ra,0x0
    800050c0:	858080e7          	jalr	-1960(ra) # 80004914 <_Z11printStringPKc>
            break;
    800050c4:	f99ff06f          	j	8000505c <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    800050c8:	fffff097          	auipc	ra,0xfffff
    800050cc:	208080e7          	jalr	520(ra) # 800042d0 <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    800050d0:	00003517          	auipc	a0,0x3
    800050d4:	3b050513          	addi	a0,a0,944 # 80008480 <CONSOLE_STATUS+0x470>
    800050d8:	00000097          	auipc	ra,0x0
    800050dc:	83c080e7          	jalr	-1988(ra) # 80004914 <_Z11printStringPKc>
            break;
    800050e0:	f7dff06f          	j	8000505c <_Z8userMainv+0x80>
            System_Mode_test();
    800050e4:	00000097          	auipc	ra,0x0
    800050e8:	658080e7          	jalr	1624(ra) # 8000573c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    800050ec:	00003517          	auipc	a0,0x3
    800050f0:	3ec50513          	addi	a0,a0,1004 # 800084d8 <CONSOLE_STATUS+0x4c8>
    800050f4:	00000097          	auipc	ra,0x0
    800050f8:	820080e7          	jalr	-2016(ra) # 80004914 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800050fc:	00003517          	auipc	a0,0x3
    80005100:	3fc50513          	addi	a0,a0,1020 # 800084f8 <CONSOLE_STATUS+0x4e8>
    80005104:	00000097          	auipc	ra,0x0
    80005108:	810080e7          	jalr	-2032(ra) # 80004914 <_Z11printStringPKc>
            break;
    8000510c:	f51ff06f          	j	8000505c <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005110:	00003517          	auipc	a0,0x3
    80005114:	44050513          	addi	a0,a0,1088 # 80008550 <CONSOLE_STATUS+0x540>
    80005118:	fffff097          	auipc	ra,0xfffff
    8000511c:	7fc080e7          	jalr	2044(ra) # 80004914 <_Z11printStringPKc>
    80005120:	f3dff06f          	j	8000505c <_Z8userMainv+0x80>

0000000080005124 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005124:	fe010113          	addi	sp,sp,-32
    80005128:	00113c23          	sd	ra,24(sp)
    8000512c:	00813823          	sd	s0,16(sp)
    80005130:	00913423          	sd	s1,8(sp)
    80005134:	01213023          	sd	s2,0(sp)
    80005138:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    8000513c:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005140:	00600493          	li	s1,6
    while (--i > 0) {
    80005144:	fff4849b          	addiw	s1,s1,-1
    80005148:	04905463          	blez	s1,80005190 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    8000514c:	00003517          	auipc	a0,0x3
    80005150:	44c50513          	addi	a0,a0,1100 # 80008598 <CONSOLE_STATUS+0x588>
    80005154:	fffff097          	auipc	ra,0xfffff
    80005158:	7c0080e7          	jalr	1984(ra) # 80004914 <_Z11printStringPKc>
        printInt(sleep_time);
    8000515c:	00000613          	li	a2,0
    80005160:	00a00593          	li	a1,10
    80005164:	0009051b          	sext.w	a0,s2
    80005168:	00000097          	auipc	ra,0x0
    8000516c:	95c080e7          	jalr	-1700(ra) # 80004ac4 <_Z8printIntiii>
        printString(" !\n");
    80005170:	00003517          	auipc	a0,0x3
    80005174:	43050513          	addi	a0,a0,1072 # 800085a0 <CONSOLE_STATUS+0x590>
    80005178:	fffff097          	auipc	ra,0xfffff
    8000517c:	79c080e7          	jalr	1948(ra) # 80004914 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005180:	00090513          	mv	a0,s2
    80005184:	ffffc097          	auipc	ra,0xffffc
    80005188:	2f0080e7          	jalr	752(ra) # 80001474 <_Z10time_sleepm>
    while (--i > 0) {
    8000518c:	fb9ff06f          	j	80005144 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005190:	00a00793          	li	a5,10
    80005194:	02f95933          	divu	s2,s2,a5
    80005198:	fff90913          	addi	s2,s2,-1
    8000519c:	00005797          	auipc	a5,0x5
    800051a0:	2ec78793          	addi	a5,a5,748 # 8000a488 <_ZL8finished>
    800051a4:	01278933          	add	s2,a5,s2
    800051a8:	00100793          	li	a5,1
    800051ac:	00f90023          	sb	a5,0(s2)
}
    800051b0:	01813083          	ld	ra,24(sp)
    800051b4:	01013403          	ld	s0,16(sp)
    800051b8:	00813483          	ld	s1,8(sp)
    800051bc:	00013903          	ld	s2,0(sp)
    800051c0:	02010113          	addi	sp,sp,32
    800051c4:	00008067          	ret

00000000800051c8 <_Z12testSleepingv>:

void testSleeping() {
    800051c8:	fc010113          	addi	sp,sp,-64
    800051cc:	02113c23          	sd	ra,56(sp)
    800051d0:	02813823          	sd	s0,48(sp)
    800051d4:	02913423          	sd	s1,40(sp)
    800051d8:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    800051dc:	00a00793          	li	a5,10
    800051e0:	fcf43823          	sd	a5,-48(s0)
    800051e4:	01400793          	li	a5,20
    800051e8:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    800051ec:	00000493          	li	s1,0
    800051f0:	02c0006f          	j	8000521c <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    800051f4:	00349793          	slli	a5,s1,0x3
    800051f8:	fd040613          	addi	a2,s0,-48
    800051fc:	00f60633          	add	a2,a2,a5
    80005200:	00000597          	auipc	a1,0x0
    80005204:	f2458593          	addi	a1,a1,-220 # 80005124 <_ZL9sleepyRunPv>
    80005208:	fc040513          	addi	a0,s0,-64
    8000520c:	00f50533          	add	a0,a0,a5
    80005210:	ffffc097          	auipc	ra,0xffffc
    80005214:	0a8080e7          	jalr	168(ra) # 800012b8 <_Z13thread_createPP3CCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005218:	0014849b          	addiw	s1,s1,1
    8000521c:	00100793          	li	a5,1
    80005220:	fc97dae3          	bge	a5,s1,800051f4 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005224:	00005797          	auipc	a5,0x5
    80005228:	2647c783          	lbu	a5,612(a5) # 8000a488 <_ZL8finished>
    8000522c:	fe078ce3          	beqz	a5,80005224 <_Z12testSleepingv+0x5c>
    80005230:	00005797          	auipc	a5,0x5
    80005234:	2597c783          	lbu	a5,601(a5) # 8000a489 <_ZL8finished+0x1>
    80005238:	fe0786e3          	beqz	a5,80005224 <_Z12testSleepingv+0x5c>
}
    8000523c:	03813083          	ld	ra,56(sp)
    80005240:	03013403          	ld	s0,48(sp)
    80005244:	02813483          	ld	s1,40(sp)
    80005248:	04010113          	addi	sp,sp,64
    8000524c:	00008067          	ret

0000000080005250 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005250:	fe010113          	addi	sp,sp,-32
    80005254:	00113c23          	sd	ra,24(sp)
    80005258:	00813823          	sd	s0,16(sp)
    8000525c:	00913423          	sd	s1,8(sp)
    80005260:	01213023          	sd	s2,0(sp)
    80005264:	02010413          	addi	s0,sp,32
    80005268:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    8000526c:	00100793          	li	a5,1
    80005270:	02a7f863          	bgeu	a5,a0,800052a0 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005274:	00a00793          	li	a5,10
    80005278:	02f577b3          	remu	a5,a0,a5
    8000527c:	02078e63          	beqz	a5,800052b8 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005280:	fff48513          	addi	a0,s1,-1
    80005284:	00000097          	auipc	ra,0x0
    80005288:	fcc080e7          	jalr	-52(ra) # 80005250 <_ZL9fibonaccim>
    8000528c:	00050913          	mv	s2,a0
    80005290:	ffe48513          	addi	a0,s1,-2
    80005294:	00000097          	auipc	ra,0x0
    80005298:	fbc080e7          	jalr	-68(ra) # 80005250 <_ZL9fibonaccim>
    8000529c:	00a90533          	add	a0,s2,a0
}
    800052a0:	01813083          	ld	ra,24(sp)
    800052a4:	01013403          	ld	s0,16(sp)
    800052a8:	00813483          	ld	s1,8(sp)
    800052ac:	00013903          	ld	s2,0(sp)
    800052b0:	02010113          	addi	sp,sp,32
    800052b4:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800052b8:	ffffc097          	auipc	ra,0xffffc
    800052bc:	074080e7          	jalr	116(ra) # 8000132c <_Z15thread_dispatchv>
    800052c0:	fc1ff06f          	j	80005280 <_ZL9fibonaccim+0x30>

00000000800052c4 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800052c4:	fe010113          	addi	sp,sp,-32
    800052c8:	00113c23          	sd	ra,24(sp)
    800052cc:	00813823          	sd	s0,16(sp)
    800052d0:	00913423          	sd	s1,8(sp)
    800052d4:	01213023          	sd	s2,0(sp)
    800052d8:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800052dc:	00a00493          	li	s1,10
    800052e0:	0400006f          	j	80005320 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800052e4:	00003517          	auipc	a0,0x3
    800052e8:	fcc50513          	addi	a0,a0,-52 # 800082b0 <CONSOLE_STATUS+0x2a0>
    800052ec:	fffff097          	auipc	ra,0xfffff
    800052f0:	628080e7          	jalr	1576(ra) # 80004914 <_Z11printStringPKc>
    800052f4:	00000613          	li	a2,0
    800052f8:	00a00593          	li	a1,10
    800052fc:	00048513          	mv	a0,s1
    80005300:	fffff097          	auipc	ra,0xfffff
    80005304:	7c4080e7          	jalr	1988(ra) # 80004ac4 <_Z8printIntiii>
    80005308:	00003517          	auipc	a0,0x3
    8000530c:	1c850513          	addi	a0,a0,456 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80005310:	fffff097          	auipc	ra,0xfffff
    80005314:	604080e7          	jalr	1540(ra) # 80004914 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005318:	0014849b          	addiw	s1,s1,1
    8000531c:	0ff4f493          	andi	s1,s1,255
    80005320:	00c00793          	li	a5,12
    80005324:	fc97f0e3          	bgeu	a5,s1,800052e4 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005328:	00003517          	auipc	a0,0x3
    8000532c:	f9050513          	addi	a0,a0,-112 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80005330:	fffff097          	auipc	ra,0xfffff
    80005334:	5e4080e7          	jalr	1508(ra) # 80004914 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005338:	00500313          	li	t1,5
    thread_dispatch();
    8000533c:	ffffc097          	auipc	ra,0xffffc
    80005340:	ff0080e7          	jalr	-16(ra) # 8000132c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005344:	01000513          	li	a0,16
    80005348:	00000097          	auipc	ra,0x0
    8000534c:	f08080e7          	jalr	-248(ra) # 80005250 <_ZL9fibonaccim>
    80005350:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005354:	00003517          	auipc	a0,0x3
    80005358:	f7450513          	addi	a0,a0,-140 # 800082c8 <CONSOLE_STATUS+0x2b8>
    8000535c:	fffff097          	auipc	ra,0xfffff
    80005360:	5b8080e7          	jalr	1464(ra) # 80004914 <_Z11printStringPKc>
    80005364:	00000613          	li	a2,0
    80005368:	00a00593          	li	a1,10
    8000536c:	0009051b          	sext.w	a0,s2
    80005370:	fffff097          	auipc	ra,0xfffff
    80005374:	754080e7          	jalr	1876(ra) # 80004ac4 <_Z8printIntiii>
    80005378:	00003517          	auipc	a0,0x3
    8000537c:	15850513          	addi	a0,a0,344 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80005380:	fffff097          	auipc	ra,0xfffff
    80005384:	594080e7          	jalr	1428(ra) # 80004914 <_Z11printStringPKc>
    80005388:	0400006f          	j	800053c8 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000538c:	00003517          	auipc	a0,0x3
    80005390:	f2450513          	addi	a0,a0,-220 # 800082b0 <CONSOLE_STATUS+0x2a0>
    80005394:	fffff097          	auipc	ra,0xfffff
    80005398:	580080e7          	jalr	1408(ra) # 80004914 <_Z11printStringPKc>
    8000539c:	00000613          	li	a2,0
    800053a0:	00a00593          	li	a1,10
    800053a4:	00048513          	mv	a0,s1
    800053a8:	fffff097          	auipc	ra,0xfffff
    800053ac:	71c080e7          	jalr	1820(ra) # 80004ac4 <_Z8printIntiii>
    800053b0:	00003517          	auipc	a0,0x3
    800053b4:	12050513          	addi	a0,a0,288 # 800084d0 <CONSOLE_STATUS+0x4c0>
    800053b8:	fffff097          	auipc	ra,0xfffff
    800053bc:	55c080e7          	jalr	1372(ra) # 80004914 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800053c0:	0014849b          	addiw	s1,s1,1
    800053c4:	0ff4f493          	andi	s1,s1,255
    800053c8:	00f00793          	li	a5,15
    800053cc:	fc97f0e3          	bgeu	a5,s1,8000538c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800053d0:	00003517          	auipc	a0,0x3
    800053d4:	f0850513          	addi	a0,a0,-248 # 800082d8 <CONSOLE_STATUS+0x2c8>
    800053d8:	fffff097          	auipc	ra,0xfffff
    800053dc:	53c080e7          	jalr	1340(ra) # 80004914 <_Z11printStringPKc>
    finishedD = true;
    800053e0:	00100793          	li	a5,1
    800053e4:	00005717          	auipc	a4,0x5
    800053e8:	0af70323          	sb	a5,166(a4) # 8000a48a <_ZL9finishedD>
    thread_dispatch();
    800053ec:	ffffc097          	auipc	ra,0xffffc
    800053f0:	f40080e7          	jalr	-192(ra) # 8000132c <_Z15thread_dispatchv>
}
    800053f4:	01813083          	ld	ra,24(sp)
    800053f8:	01013403          	ld	s0,16(sp)
    800053fc:	00813483          	ld	s1,8(sp)
    80005400:	00013903          	ld	s2,0(sp)
    80005404:	02010113          	addi	sp,sp,32
    80005408:	00008067          	ret

000000008000540c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    8000540c:	fe010113          	addi	sp,sp,-32
    80005410:	00113c23          	sd	ra,24(sp)
    80005414:	00813823          	sd	s0,16(sp)
    80005418:	00913423          	sd	s1,8(sp)
    8000541c:	01213023          	sd	s2,0(sp)
    80005420:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005424:	00000493          	li	s1,0
    80005428:	0400006f          	j	80005468 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    8000542c:	00003517          	auipc	a0,0x3
    80005430:	e5450513          	addi	a0,a0,-428 # 80008280 <CONSOLE_STATUS+0x270>
    80005434:	fffff097          	auipc	ra,0xfffff
    80005438:	4e0080e7          	jalr	1248(ra) # 80004914 <_Z11printStringPKc>
    8000543c:	00000613          	li	a2,0
    80005440:	00a00593          	li	a1,10
    80005444:	00048513          	mv	a0,s1
    80005448:	fffff097          	auipc	ra,0xfffff
    8000544c:	67c080e7          	jalr	1660(ra) # 80004ac4 <_Z8printIntiii>
    80005450:	00003517          	auipc	a0,0x3
    80005454:	08050513          	addi	a0,a0,128 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80005458:	fffff097          	auipc	ra,0xfffff
    8000545c:	4bc080e7          	jalr	1212(ra) # 80004914 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005460:	0014849b          	addiw	s1,s1,1
    80005464:	0ff4f493          	andi	s1,s1,255
    80005468:	00200793          	li	a5,2
    8000546c:	fc97f0e3          	bgeu	a5,s1,8000542c <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005470:	00003517          	auipc	a0,0x3
    80005474:	e1850513          	addi	a0,a0,-488 # 80008288 <CONSOLE_STATUS+0x278>
    80005478:	fffff097          	auipc	ra,0xfffff
    8000547c:	49c080e7          	jalr	1180(ra) # 80004914 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005480:	00700313          	li	t1,7
    thread_dispatch();
    80005484:	ffffc097          	auipc	ra,0xffffc
    80005488:	ea8080e7          	jalr	-344(ra) # 8000132c <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    8000548c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005490:	00003517          	auipc	a0,0x3
    80005494:	e0850513          	addi	a0,a0,-504 # 80008298 <CONSOLE_STATUS+0x288>
    80005498:	fffff097          	auipc	ra,0xfffff
    8000549c:	47c080e7          	jalr	1148(ra) # 80004914 <_Z11printStringPKc>
    800054a0:	00000613          	li	a2,0
    800054a4:	00a00593          	li	a1,10
    800054a8:	0009051b          	sext.w	a0,s2
    800054ac:	fffff097          	auipc	ra,0xfffff
    800054b0:	618080e7          	jalr	1560(ra) # 80004ac4 <_Z8printIntiii>
    800054b4:	00003517          	auipc	a0,0x3
    800054b8:	01c50513          	addi	a0,a0,28 # 800084d0 <CONSOLE_STATUS+0x4c0>
    800054bc:	fffff097          	auipc	ra,0xfffff
    800054c0:	458080e7          	jalr	1112(ra) # 80004914 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800054c4:	00c00513          	li	a0,12
    800054c8:	00000097          	auipc	ra,0x0
    800054cc:	d88080e7          	jalr	-632(ra) # 80005250 <_ZL9fibonaccim>
    800054d0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800054d4:	00003517          	auipc	a0,0x3
    800054d8:	dcc50513          	addi	a0,a0,-564 # 800082a0 <CONSOLE_STATUS+0x290>
    800054dc:	fffff097          	auipc	ra,0xfffff
    800054e0:	438080e7          	jalr	1080(ra) # 80004914 <_Z11printStringPKc>
    800054e4:	00000613          	li	a2,0
    800054e8:	00a00593          	li	a1,10
    800054ec:	0009051b          	sext.w	a0,s2
    800054f0:	fffff097          	auipc	ra,0xfffff
    800054f4:	5d4080e7          	jalr	1492(ra) # 80004ac4 <_Z8printIntiii>
    800054f8:	00003517          	auipc	a0,0x3
    800054fc:	fd850513          	addi	a0,a0,-40 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80005500:	fffff097          	auipc	ra,0xfffff
    80005504:	414080e7          	jalr	1044(ra) # 80004914 <_Z11printStringPKc>
    80005508:	0400006f          	j	80005548 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    8000550c:	00003517          	auipc	a0,0x3
    80005510:	d7450513          	addi	a0,a0,-652 # 80008280 <CONSOLE_STATUS+0x270>
    80005514:	fffff097          	auipc	ra,0xfffff
    80005518:	400080e7          	jalr	1024(ra) # 80004914 <_Z11printStringPKc>
    8000551c:	00000613          	li	a2,0
    80005520:	00a00593          	li	a1,10
    80005524:	00048513          	mv	a0,s1
    80005528:	fffff097          	auipc	ra,0xfffff
    8000552c:	59c080e7          	jalr	1436(ra) # 80004ac4 <_Z8printIntiii>
    80005530:	00003517          	auipc	a0,0x3
    80005534:	fa050513          	addi	a0,a0,-96 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80005538:	fffff097          	auipc	ra,0xfffff
    8000553c:	3dc080e7          	jalr	988(ra) # 80004914 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005540:	0014849b          	addiw	s1,s1,1
    80005544:	0ff4f493          	andi	s1,s1,255
    80005548:	00500793          	li	a5,5
    8000554c:	fc97f0e3          	bgeu	a5,s1,8000550c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005550:	00003517          	auipc	a0,0x3
    80005554:	d0850513          	addi	a0,a0,-760 # 80008258 <CONSOLE_STATUS+0x248>
    80005558:	fffff097          	auipc	ra,0xfffff
    8000555c:	3bc080e7          	jalr	956(ra) # 80004914 <_Z11printStringPKc>
    finishedC = true;
    80005560:	00100793          	li	a5,1
    80005564:	00005717          	auipc	a4,0x5
    80005568:	f2f703a3          	sb	a5,-217(a4) # 8000a48b <_ZL9finishedC>
    thread_dispatch();
    8000556c:	ffffc097          	auipc	ra,0xffffc
    80005570:	dc0080e7          	jalr	-576(ra) # 8000132c <_Z15thread_dispatchv>
}
    80005574:	01813083          	ld	ra,24(sp)
    80005578:	01013403          	ld	s0,16(sp)
    8000557c:	00813483          	ld	s1,8(sp)
    80005580:	00013903          	ld	s2,0(sp)
    80005584:	02010113          	addi	sp,sp,32
    80005588:	00008067          	ret

000000008000558c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    8000558c:	fe010113          	addi	sp,sp,-32
    80005590:	00113c23          	sd	ra,24(sp)
    80005594:	00813823          	sd	s0,16(sp)
    80005598:	00913423          	sd	s1,8(sp)
    8000559c:	01213023          	sd	s2,0(sp)
    800055a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800055a4:	00000913          	li	s2,0
    800055a8:	0400006f          	j	800055e8 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    800055ac:	ffffc097          	auipc	ra,0xffffc
    800055b0:	d80080e7          	jalr	-640(ra) # 8000132c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800055b4:	00148493          	addi	s1,s1,1
    800055b8:	000027b7          	lui	a5,0x2
    800055bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800055c0:	0097ee63          	bltu	a5,s1,800055dc <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800055c4:	00000713          	li	a4,0
    800055c8:	000077b7          	lui	a5,0x7
    800055cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800055d0:	fce7eee3          	bltu	a5,a4,800055ac <_ZL11workerBodyBPv+0x20>
    800055d4:	00170713          	addi	a4,a4,1
    800055d8:	ff1ff06f          	j	800055c8 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    800055dc:	00a00793          	li	a5,10
    800055e0:	04f90663          	beq	s2,a5,8000562c <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    800055e4:	00190913          	addi	s2,s2,1
    800055e8:	00f00793          	li	a5,15
    800055ec:	0527e463          	bltu	a5,s2,80005634 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    800055f0:	00003517          	auipc	a0,0x3
    800055f4:	c7850513          	addi	a0,a0,-904 # 80008268 <CONSOLE_STATUS+0x258>
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	31c080e7          	jalr	796(ra) # 80004914 <_Z11printStringPKc>
    80005600:	00000613          	li	a2,0
    80005604:	00a00593          	li	a1,10
    80005608:	0009051b          	sext.w	a0,s2
    8000560c:	fffff097          	auipc	ra,0xfffff
    80005610:	4b8080e7          	jalr	1208(ra) # 80004ac4 <_Z8printIntiii>
    80005614:	00003517          	auipc	a0,0x3
    80005618:	ebc50513          	addi	a0,a0,-324 # 800084d0 <CONSOLE_STATUS+0x4c0>
    8000561c:	fffff097          	auipc	ra,0xfffff
    80005620:	2f8080e7          	jalr	760(ra) # 80004914 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005624:	00000493          	li	s1,0
    80005628:	f91ff06f          	j	800055b8 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    8000562c:	14102ff3          	csrr	t6,sepc
    80005630:	fb5ff06f          	j	800055e4 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80005634:	00003517          	auipc	a0,0x3
    80005638:	c3c50513          	addi	a0,a0,-964 # 80008270 <CONSOLE_STATUS+0x260>
    8000563c:	fffff097          	auipc	ra,0xfffff
    80005640:	2d8080e7          	jalr	728(ra) # 80004914 <_Z11printStringPKc>
    finishedB = true;
    80005644:	00100793          	li	a5,1
    80005648:	00005717          	auipc	a4,0x5
    8000564c:	e4f70223          	sb	a5,-444(a4) # 8000a48c <_ZL9finishedB>
    thread_dispatch();
    80005650:	ffffc097          	auipc	ra,0xffffc
    80005654:	cdc080e7          	jalr	-804(ra) # 8000132c <_Z15thread_dispatchv>
}
    80005658:	01813083          	ld	ra,24(sp)
    8000565c:	01013403          	ld	s0,16(sp)
    80005660:	00813483          	ld	s1,8(sp)
    80005664:	00013903          	ld	s2,0(sp)
    80005668:	02010113          	addi	sp,sp,32
    8000566c:	00008067          	ret

0000000080005670 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005670:	fe010113          	addi	sp,sp,-32
    80005674:	00113c23          	sd	ra,24(sp)
    80005678:	00813823          	sd	s0,16(sp)
    8000567c:	00913423          	sd	s1,8(sp)
    80005680:	01213023          	sd	s2,0(sp)
    80005684:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005688:	00000913          	li	s2,0
    8000568c:	0380006f          	j	800056c4 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80005690:	ffffc097          	auipc	ra,0xffffc
    80005694:	c9c080e7          	jalr	-868(ra) # 8000132c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005698:	00148493          	addi	s1,s1,1
    8000569c:	000027b7          	lui	a5,0x2
    800056a0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800056a4:	0097ee63          	bltu	a5,s1,800056c0 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800056a8:	00000713          	li	a4,0
    800056ac:	000077b7          	lui	a5,0x7
    800056b0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800056b4:	fce7eee3          	bltu	a5,a4,80005690 <_ZL11workerBodyAPv+0x20>
    800056b8:	00170713          	addi	a4,a4,1
    800056bc:	ff1ff06f          	j	800056ac <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800056c0:	00190913          	addi	s2,s2,1
    800056c4:	00900793          	li	a5,9
    800056c8:	0527e063          	bltu	a5,s2,80005708 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800056cc:	00003517          	auipc	a0,0x3
    800056d0:	b8450513          	addi	a0,a0,-1148 # 80008250 <CONSOLE_STATUS+0x240>
    800056d4:	fffff097          	auipc	ra,0xfffff
    800056d8:	240080e7          	jalr	576(ra) # 80004914 <_Z11printStringPKc>
    800056dc:	00000613          	li	a2,0
    800056e0:	00a00593          	li	a1,10
    800056e4:	0009051b          	sext.w	a0,s2
    800056e8:	fffff097          	auipc	ra,0xfffff
    800056ec:	3dc080e7          	jalr	988(ra) # 80004ac4 <_Z8printIntiii>
    800056f0:	00003517          	auipc	a0,0x3
    800056f4:	de050513          	addi	a0,a0,-544 # 800084d0 <CONSOLE_STATUS+0x4c0>
    800056f8:	fffff097          	auipc	ra,0xfffff
    800056fc:	21c080e7          	jalr	540(ra) # 80004914 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005700:	00000493          	li	s1,0
    80005704:	f99ff06f          	j	8000569c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005708:	00003517          	auipc	a0,0x3
    8000570c:	b5050513          	addi	a0,a0,-1200 # 80008258 <CONSOLE_STATUS+0x248>
    80005710:	fffff097          	auipc	ra,0xfffff
    80005714:	204080e7          	jalr	516(ra) # 80004914 <_Z11printStringPKc>
    finishedA = true;
    80005718:	00100793          	li	a5,1
    8000571c:	00005717          	auipc	a4,0x5
    80005720:	d6f708a3          	sb	a5,-655(a4) # 8000a48d <_ZL9finishedA>
}
    80005724:	01813083          	ld	ra,24(sp)
    80005728:	01013403          	ld	s0,16(sp)
    8000572c:	00813483          	ld	s1,8(sp)
    80005730:	00013903          	ld	s2,0(sp)
    80005734:	02010113          	addi	sp,sp,32
    80005738:	00008067          	ret

000000008000573c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000573c:	fd010113          	addi	sp,sp,-48
    80005740:	02113423          	sd	ra,40(sp)
    80005744:	02813023          	sd	s0,32(sp)
    80005748:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000574c:	00000613          	li	a2,0
    80005750:	00000597          	auipc	a1,0x0
    80005754:	f2058593          	addi	a1,a1,-224 # 80005670 <_ZL11workerBodyAPv>
    80005758:	fd040513          	addi	a0,s0,-48
    8000575c:	ffffc097          	auipc	ra,0xffffc
    80005760:	b5c080e7          	jalr	-1188(ra) # 800012b8 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadA created\n");
    80005764:	00003517          	auipc	a0,0x3
    80005768:	b8450513          	addi	a0,a0,-1148 # 800082e8 <CONSOLE_STATUS+0x2d8>
    8000576c:	fffff097          	auipc	ra,0xfffff
    80005770:	1a8080e7          	jalr	424(ra) # 80004914 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80005774:	00000613          	li	a2,0
    80005778:	00000597          	auipc	a1,0x0
    8000577c:	e1458593          	addi	a1,a1,-492 # 8000558c <_ZL11workerBodyBPv>
    80005780:	fd840513          	addi	a0,s0,-40
    80005784:	ffffc097          	auipc	ra,0xffffc
    80005788:	b34080e7          	jalr	-1228(ra) # 800012b8 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadB created\n");
    8000578c:	00003517          	auipc	a0,0x3
    80005790:	b7450513          	addi	a0,a0,-1164 # 80008300 <CONSOLE_STATUS+0x2f0>
    80005794:	fffff097          	auipc	ra,0xfffff
    80005798:	180080e7          	jalr	384(ra) # 80004914 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    8000579c:	00000613          	li	a2,0
    800057a0:	00000597          	auipc	a1,0x0
    800057a4:	c6c58593          	addi	a1,a1,-916 # 8000540c <_ZL11workerBodyCPv>
    800057a8:	fe040513          	addi	a0,s0,-32
    800057ac:	ffffc097          	auipc	ra,0xffffc
    800057b0:	b0c080e7          	jalr	-1268(ra) # 800012b8 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadC created\n");
    800057b4:	00003517          	auipc	a0,0x3
    800057b8:	b6450513          	addi	a0,a0,-1180 # 80008318 <CONSOLE_STATUS+0x308>
    800057bc:	fffff097          	auipc	ra,0xfffff
    800057c0:	158080e7          	jalr	344(ra) # 80004914 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800057c4:	00000613          	li	a2,0
    800057c8:	00000597          	auipc	a1,0x0
    800057cc:	afc58593          	addi	a1,a1,-1284 # 800052c4 <_ZL11workerBodyDPv>
    800057d0:	fe840513          	addi	a0,s0,-24
    800057d4:	ffffc097          	auipc	ra,0xffffc
    800057d8:	ae4080e7          	jalr	-1308(ra) # 800012b8 <_Z13thread_createPP3CCBPFvPvES2_>
    printString("ThreadD created\n");
    800057dc:	00003517          	auipc	a0,0x3
    800057e0:	b5450513          	addi	a0,a0,-1196 # 80008330 <CONSOLE_STATUS+0x320>
    800057e4:	fffff097          	auipc	ra,0xfffff
    800057e8:	130080e7          	jalr	304(ra) # 80004914 <_Z11printStringPKc>
    800057ec:	00c0006f          	j	800057f8 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800057f0:	ffffc097          	auipc	ra,0xffffc
    800057f4:	b3c080e7          	jalr	-1220(ra) # 8000132c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800057f8:	00005797          	auipc	a5,0x5
    800057fc:	c957c783          	lbu	a5,-875(a5) # 8000a48d <_ZL9finishedA>
    80005800:	fe0788e3          	beqz	a5,800057f0 <_Z16System_Mode_testv+0xb4>
    80005804:	00005797          	auipc	a5,0x5
    80005808:	c887c783          	lbu	a5,-888(a5) # 8000a48c <_ZL9finishedB>
    8000580c:	fe0782e3          	beqz	a5,800057f0 <_Z16System_Mode_testv+0xb4>
    80005810:	00005797          	auipc	a5,0x5
    80005814:	c7b7c783          	lbu	a5,-901(a5) # 8000a48b <_ZL9finishedC>
    80005818:	fc078ce3          	beqz	a5,800057f0 <_Z16System_Mode_testv+0xb4>
    8000581c:	00005797          	auipc	a5,0x5
    80005820:	c6e7c783          	lbu	a5,-914(a5) # 8000a48a <_ZL9finishedD>
    80005824:	fc0786e3          	beqz	a5,800057f0 <_Z16System_Mode_testv+0xb4>
    }

}
    80005828:	02813083          	ld	ra,40(sp)
    8000582c:	02013403          	ld	s0,32(sp)
    80005830:	03010113          	addi	sp,sp,48
    80005834:	00008067          	ret

0000000080005838 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005838:	fe010113          	addi	sp,sp,-32
    8000583c:	00113c23          	sd	ra,24(sp)
    80005840:	00813823          	sd	s0,16(sp)
    80005844:	00913423          	sd	s1,8(sp)
    80005848:	01213023          	sd	s2,0(sp)
    8000584c:	02010413          	addi	s0,sp,32
    80005850:	00050493          	mv	s1,a0
    80005854:	00058913          	mv	s2,a1
    80005858:	0015879b          	addiw	a5,a1,1
    8000585c:	0007851b          	sext.w	a0,a5
    80005860:	00f4a023          	sw	a5,0(s1)
    80005864:	0004a823          	sw	zero,16(s1)
    80005868:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000586c:	00251513          	slli	a0,a0,0x2
    80005870:	ffffc097          	auipc	ra,0xffffc
    80005874:	9d4080e7          	jalr	-1580(ra) # 80001244 <_Z9mem_allocm>
    80005878:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000587c:	00000593          	li	a1,0
    80005880:	02048513          	addi	a0,s1,32
    80005884:	ffffc097          	auipc	ra,0xffffc
    80005888:	ad8080e7          	jalr	-1320(ra) # 8000135c <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    8000588c:	00090593          	mv	a1,s2
    80005890:	01848513          	addi	a0,s1,24
    80005894:	ffffc097          	auipc	ra,0xffffc
    80005898:	ac8080e7          	jalr	-1336(ra) # 8000135c <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    8000589c:	00100593          	li	a1,1
    800058a0:	02848513          	addi	a0,s1,40
    800058a4:	ffffc097          	auipc	ra,0xffffc
    800058a8:	ab8080e7          	jalr	-1352(ra) # 8000135c <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    800058ac:	00100593          	li	a1,1
    800058b0:	03048513          	addi	a0,s1,48
    800058b4:	ffffc097          	auipc	ra,0xffffc
    800058b8:	aa8080e7          	jalr	-1368(ra) # 8000135c <_Z8sem_openPP3Semj>
}
    800058bc:	01813083          	ld	ra,24(sp)
    800058c0:	01013403          	ld	s0,16(sp)
    800058c4:	00813483          	ld	s1,8(sp)
    800058c8:	00013903          	ld	s2,0(sp)
    800058cc:	02010113          	addi	sp,sp,32
    800058d0:	00008067          	ret

00000000800058d4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800058d4:	fe010113          	addi	sp,sp,-32
    800058d8:	00113c23          	sd	ra,24(sp)
    800058dc:	00813823          	sd	s0,16(sp)
    800058e0:	00913423          	sd	s1,8(sp)
    800058e4:	01213023          	sd	s2,0(sp)
    800058e8:	02010413          	addi	s0,sp,32
    800058ec:	00050493          	mv	s1,a0
    800058f0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800058f4:	01853503          	ld	a0,24(a0)
    800058f8:	ffffc097          	auipc	ra,0xffffc
    800058fc:	ac8080e7          	jalr	-1336(ra) # 800013c0 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80005900:	0304b503          	ld	a0,48(s1)
    80005904:	ffffc097          	auipc	ra,0xffffc
    80005908:	abc080e7          	jalr	-1348(ra) # 800013c0 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    8000590c:	0084b783          	ld	a5,8(s1)
    80005910:	0144a703          	lw	a4,20(s1)
    80005914:	00271713          	slli	a4,a4,0x2
    80005918:	00e787b3          	add	a5,a5,a4
    8000591c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005920:	0144a783          	lw	a5,20(s1)
    80005924:	0017879b          	addiw	a5,a5,1
    80005928:	0004a703          	lw	a4,0(s1)
    8000592c:	02e7e7bb          	remw	a5,a5,a4
    80005930:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005934:	0304b503          	ld	a0,48(s1)
    80005938:	ffffc097          	auipc	ra,0xffffc
    8000593c:	ab8080e7          	jalr	-1352(ra) # 800013f0 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80005940:	0204b503          	ld	a0,32(s1)
    80005944:	ffffc097          	auipc	ra,0xffffc
    80005948:	aac080e7          	jalr	-1364(ra) # 800013f0 <_Z10sem_signalP3Sem>

}
    8000594c:	01813083          	ld	ra,24(sp)
    80005950:	01013403          	ld	s0,16(sp)
    80005954:	00813483          	ld	s1,8(sp)
    80005958:	00013903          	ld	s2,0(sp)
    8000595c:	02010113          	addi	sp,sp,32
    80005960:	00008067          	ret

0000000080005964 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005964:	fe010113          	addi	sp,sp,-32
    80005968:	00113c23          	sd	ra,24(sp)
    8000596c:	00813823          	sd	s0,16(sp)
    80005970:	00913423          	sd	s1,8(sp)
    80005974:	01213023          	sd	s2,0(sp)
    80005978:	02010413          	addi	s0,sp,32
    8000597c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005980:	02053503          	ld	a0,32(a0)
    80005984:	ffffc097          	auipc	ra,0xffffc
    80005988:	a3c080e7          	jalr	-1476(ra) # 800013c0 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    8000598c:	0284b503          	ld	a0,40(s1)
    80005990:	ffffc097          	auipc	ra,0xffffc
    80005994:	a30080e7          	jalr	-1488(ra) # 800013c0 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80005998:	0084b703          	ld	a4,8(s1)
    8000599c:	0104a783          	lw	a5,16(s1)
    800059a0:	00279693          	slli	a3,a5,0x2
    800059a4:	00d70733          	add	a4,a4,a3
    800059a8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800059ac:	0017879b          	addiw	a5,a5,1
    800059b0:	0004a703          	lw	a4,0(s1)
    800059b4:	02e7e7bb          	remw	a5,a5,a4
    800059b8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800059bc:	0284b503          	ld	a0,40(s1)
    800059c0:	ffffc097          	auipc	ra,0xffffc
    800059c4:	a30080e7          	jalr	-1488(ra) # 800013f0 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    800059c8:	0184b503          	ld	a0,24(s1)
    800059cc:	ffffc097          	auipc	ra,0xffffc
    800059d0:	a24080e7          	jalr	-1500(ra) # 800013f0 <_Z10sem_signalP3Sem>

    return ret;
}
    800059d4:	00090513          	mv	a0,s2
    800059d8:	01813083          	ld	ra,24(sp)
    800059dc:	01013403          	ld	s0,16(sp)
    800059e0:	00813483          	ld	s1,8(sp)
    800059e4:	00013903          	ld	s2,0(sp)
    800059e8:	02010113          	addi	sp,sp,32
    800059ec:	00008067          	ret

00000000800059f0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800059f0:	fe010113          	addi	sp,sp,-32
    800059f4:	00113c23          	sd	ra,24(sp)
    800059f8:	00813823          	sd	s0,16(sp)
    800059fc:	00913423          	sd	s1,8(sp)
    80005a00:	01213023          	sd	s2,0(sp)
    80005a04:	02010413          	addi	s0,sp,32
    80005a08:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005a0c:	02853503          	ld	a0,40(a0)
    80005a10:	ffffc097          	auipc	ra,0xffffc
    80005a14:	9b0080e7          	jalr	-1616(ra) # 800013c0 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80005a18:	0304b503          	ld	a0,48(s1)
    80005a1c:	ffffc097          	auipc	ra,0xffffc
    80005a20:	9a4080e7          	jalr	-1628(ra) # 800013c0 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    80005a24:	0144a783          	lw	a5,20(s1)
    80005a28:	0104a903          	lw	s2,16(s1)
    80005a2c:	0327ce63          	blt	a5,s2,80005a68 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005a30:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005a34:	0304b503          	ld	a0,48(s1)
    80005a38:	ffffc097          	auipc	ra,0xffffc
    80005a3c:	9b8080e7          	jalr	-1608(ra) # 800013f0 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    80005a40:	0284b503          	ld	a0,40(s1)
    80005a44:	ffffc097          	auipc	ra,0xffffc
    80005a48:	9ac080e7          	jalr	-1620(ra) # 800013f0 <_Z10sem_signalP3Sem>

    return ret;
}
    80005a4c:	00090513          	mv	a0,s2
    80005a50:	01813083          	ld	ra,24(sp)
    80005a54:	01013403          	ld	s0,16(sp)
    80005a58:	00813483          	ld	s1,8(sp)
    80005a5c:	00013903          	ld	s2,0(sp)
    80005a60:	02010113          	addi	sp,sp,32
    80005a64:	00008067          	ret
        ret = cap - head + tail;
    80005a68:	0004a703          	lw	a4,0(s1)
    80005a6c:	4127093b          	subw	s2,a4,s2
    80005a70:	00f9093b          	addw	s2,s2,a5
    80005a74:	fc1ff06f          	j	80005a34 <_ZN6Buffer6getCntEv+0x44>

0000000080005a78 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005a78:	fe010113          	addi	sp,sp,-32
    80005a7c:	00113c23          	sd	ra,24(sp)
    80005a80:	00813823          	sd	s0,16(sp)
    80005a84:	00913423          	sd	s1,8(sp)
    80005a88:	02010413          	addi	s0,sp,32
    80005a8c:	00050493          	mv	s1,a0
    putc('\n');
    80005a90:	00a00513          	li	a0,10
    80005a94:	ffffc097          	auipc	ra,0xffffc
    80005a98:	a30080e7          	jalr	-1488(ra) # 800014c4 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005a9c:	00003517          	auipc	a0,0x3
    80005aa0:	8ac50513          	addi	a0,a0,-1876 # 80008348 <CONSOLE_STATUS+0x338>
    80005aa4:	fffff097          	auipc	ra,0xfffff
    80005aa8:	e70080e7          	jalr	-400(ra) # 80004914 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005aac:	00048513          	mv	a0,s1
    80005ab0:	00000097          	auipc	ra,0x0
    80005ab4:	f40080e7          	jalr	-192(ra) # 800059f0 <_ZN6Buffer6getCntEv>
    80005ab8:	02a05c63          	blez	a0,80005af0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005abc:	0084b783          	ld	a5,8(s1)
    80005ac0:	0104a703          	lw	a4,16(s1)
    80005ac4:	00271713          	slli	a4,a4,0x2
    80005ac8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005acc:	0007c503          	lbu	a0,0(a5)
    80005ad0:	ffffc097          	auipc	ra,0xffffc
    80005ad4:	9f4080e7          	jalr	-1548(ra) # 800014c4 <_Z4putcc>
        head = (head + 1) % cap;
    80005ad8:	0104a783          	lw	a5,16(s1)
    80005adc:	0017879b          	addiw	a5,a5,1
    80005ae0:	0004a703          	lw	a4,0(s1)
    80005ae4:	02e7e7bb          	remw	a5,a5,a4
    80005ae8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005aec:	fc1ff06f          	j	80005aac <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005af0:	02100513          	li	a0,33
    80005af4:	ffffc097          	auipc	ra,0xffffc
    80005af8:	9d0080e7          	jalr	-1584(ra) # 800014c4 <_Z4putcc>
    putc('\n');
    80005afc:	00a00513          	li	a0,10
    80005b00:	ffffc097          	auipc	ra,0xffffc
    80005b04:	9c4080e7          	jalr	-1596(ra) # 800014c4 <_Z4putcc>
    mem_free(buffer);
    80005b08:	0084b503          	ld	a0,8(s1)
    80005b0c:	ffffb097          	auipc	ra,0xffffb
    80005b10:	774080e7          	jalr	1908(ra) # 80001280 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005b14:	0204b503          	ld	a0,32(s1)
    80005b18:	ffffc097          	auipc	ra,0xffffc
    80005b1c:	878080e7          	jalr	-1928(ra) # 80001390 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    80005b20:	0184b503          	ld	a0,24(s1)
    80005b24:	ffffc097          	auipc	ra,0xffffc
    80005b28:	86c080e7          	jalr	-1940(ra) # 80001390 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    80005b2c:	0304b503          	ld	a0,48(s1)
    80005b30:	ffffc097          	auipc	ra,0xffffc
    80005b34:	860080e7          	jalr	-1952(ra) # 80001390 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    80005b38:	0284b503          	ld	a0,40(s1)
    80005b3c:	ffffc097          	auipc	ra,0xffffc
    80005b40:	854080e7          	jalr	-1964(ra) # 80001390 <_Z9sem_closeP3Sem>
}
    80005b44:	01813083          	ld	ra,24(sp)
    80005b48:	01013403          	ld	s0,16(sp)
    80005b4c:	00813483          	ld	s1,8(sp)
    80005b50:	02010113          	addi	sp,sp,32
    80005b54:	00008067          	ret

0000000080005b58 <start>:
    80005b58:	ff010113          	addi	sp,sp,-16
    80005b5c:	00813423          	sd	s0,8(sp)
    80005b60:	01010413          	addi	s0,sp,16
    80005b64:	300027f3          	csrr	a5,mstatus
    80005b68:	ffffe737          	lui	a4,0xffffe
    80005b6c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff310f>
    80005b70:	00e7f7b3          	and	a5,a5,a4
    80005b74:	00001737          	lui	a4,0x1
    80005b78:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005b7c:	00e7e7b3          	or	a5,a5,a4
    80005b80:	30079073          	csrw	mstatus,a5
    80005b84:	00000797          	auipc	a5,0x0
    80005b88:	16078793          	addi	a5,a5,352 # 80005ce4 <system_main>
    80005b8c:	34179073          	csrw	mepc,a5
    80005b90:	00000793          	li	a5,0
    80005b94:	18079073          	csrw	satp,a5
    80005b98:	000107b7          	lui	a5,0x10
    80005b9c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005ba0:	30279073          	csrw	medeleg,a5
    80005ba4:	30379073          	csrw	mideleg,a5
    80005ba8:	104027f3          	csrr	a5,sie
    80005bac:	2227e793          	ori	a5,a5,546
    80005bb0:	10479073          	csrw	sie,a5
    80005bb4:	fff00793          	li	a5,-1
    80005bb8:	00a7d793          	srli	a5,a5,0xa
    80005bbc:	3b079073          	csrw	pmpaddr0,a5
    80005bc0:	00f00793          	li	a5,15
    80005bc4:	3a079073          	csrw	pmpcfg0,a5
    80005bc8:	f14027f3          	csrr	a5,mhartid
    80005bcc:	0200c737          	lui	a4,0x200c
    80005bd0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005bd4:	0007869b          	sext.w	a3,a5
    80005bd8:	00269713          	slli	a4,a3,0x2
    80005bdc:	000f4637          	lui	a2,0xf4
    80005be0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005be4:	00d70733          	add	a4,a4,a3
    80005be8:	0037979b          	slliw	a5,a5,0x3
    80005bec:	020046b7          	lui	a3,0x2004
    80005bf0:	00d787b3          	add	a5,a5,a3
    80005bf4:	00c585b3          	add	a1,a1,a2
    80005bf8:	00371693          	slli	a3,a4,0x3
    80005bfc:	00005717          	auipc	a4,0x5
    80005c00:	89470713          	addi	a4,a4,-1900 # 8000a490 <timer_scratch>
    80005c04:	00b7b023          	sd	a1,0(a5)
    80005c08:	00d70733          	add	a4,a4,a3
    80005c0c:	00f73c23          	sd	a5,24(a4)
    80005c10:	02c73023          	sd	a2,32(a4)
    80005c14:	34071073          	csrw	mscratch,a4
    80005c18:	00000797          	auipc	a5,0x0
    80005c1c:	6e878793          	addi	a5,a5,1768 # 80006300 <timervec>
    80005c20:	30579073          	csrw	mtvec,a5
    80005c24:	300027f3          	csrr	a5,mstatus
    80005c28:	0087e793          	ori	a5,a5,8
    80005c2c:	30079073          	csrw	mstatus,a5
    80005c30:	304027f3          	csrr	a5,mie
    80005c34:	0807e793          	ori	a5,a5,128
    80005c38:	30479073          	csrw	mie,a5
    80005c3c:	f14027f3          	csrr	a5,mhartid
    80005c40:	0007879b          	sext.w	a5,a5
    80005c44:	00078213          	mv	tp,a5
    80005c48:	30200073          	mret
    80005c4c:	00813403          	ld	s0,8(sp)
    80005c50:	01010113          	addi	sp,sp,16
    80005c54:	00008067          	ret

0000000080005c58 <timerinit>:
    80005c58:	ff010113          	addi	sp,sp,-16
    80005c5c:	00813423          	sd	s0,8(sp)
    80005c60:	01010413          	addi	s0,sp,16
    80005c64:	f14027f3          	csrr	a5,mhartid
    80005c68:	0200c737          	lui	a4,0x200c
    80005c6c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005c70:	0007869b          	sext.w	a3,a5
    80005c74:	00269713          	slli	a4,a3,0x2
    80005c78:	000f4637          	lui	a2,0xf4
    80005c7c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005c80:	00d70733          	add	a4,a4,a3
    80005c84:	0037979b          	slliw	a5,a5,0x3
    80005c88:	020046b7          	lui	a3,0x2004
    80005c8c:	00d787b3          	add	a5,a5,a3
    80005c90:	00c585b3          	add	a1,a1,a2
    80005c94:	00371693          	slli	a3,a4,0x3
    80005c98:	00004717          	auipc	a4,0x4
    80005c9c:	7f870713          	addi	a4,a4,2040 # 8000a490 <timer_scratch>
    80005ca0:	00b7b023          	sd	a1,0(a5)
    80005ca4:	00d70733          	add	a4,a4,a3
    80005ca8:	00f73c23          	sd	a5,24(a4)
    80005cac:	02c73023          	sd	a2,32(a4)
    80005cb0:	34071073          	csrw	mscratch,a4
    80005cb4:	00000797          	auipc	a5,0x0
    80005cb8:	64c78793          	addi	a5,a5,1612 # 80006300 <timervec>
    80005cbc:	30579073          	csrw	mtvec,a5
    80005cc0:	300027f3          	csrr	a5,mstatus
    80005cc4:	0087e793          	ori	a5,a5,8
    80005cc8:	30079073          	csrw	mstatus,a5
    80005ccc:	304027f3          	csrr	a5,mie
    80005cd0:	0807e793          	ori	a5,a5,128
    80005cd4:	30479073          	csrw	mie,a5
    80005cd8:	00813403          	ld	s0,8(sp)
    80005cdc:	01010113          	addi	sp,sp,16
    80005ce0:	00008067          	ret

0000000080005ce4 <system_main>:
    80005ce4:	fe010113          	addi	sp,sp,-32
    80005ce8:	00813823          	sd	s0,16(sp)
    80005cec:	00913423          	sd	s1,8(sp)
    80005cf0:	00113c23          	sd	ra,24(sp)
    80005cf4:	02010413          	addi	s0,sp,32
    80005cf8:	00000097          	auipc	ra,0x0
    80005cfc:	0c4080e7          	jalr	196(ra) # 80005dbc <cpuid>
    80005d00:	00004497          	auipc	s1,0x4
    80005d04:	6f048493          	addi	s1,s1,1776 # 8000a3f0 <started>
    80005d08:	02050263          	beqz	a0,80005d2c <system_main+0x48>
    80005d0c:	0004a783          	lw	a5,0(s1)
    80005d10:	0007879b          	sext.w	a5,a5
    80005d14:	fe078ce3          	beqz	a5,80005d0c <system_main+0x28>
    80005d18:	0ff0000f          	fence
    80005d1c:	00003517          	auipc	a0,0x3
    80005d20:	8bc50513          	addi	a0,a0,-1860 # 800085d8 <CONSOLE_STATUS+0x5c8>
    80005d24:	00001097          	auipc	ra,0x1
    80005d28:	a78080e7          	jalr	-1416(ra) # 8000679c <panic>
    80005d2c:	00001097          	auipc	ra,0x1
    80005d30:	9cc080e7          	jalr	-1588(ra) # 800066f8 <consoleinit>
    80005d34:	00001097          	auipc	ra,0x1
    80005d38:	158080e7          	jalr	344(ra) # 80006e8c <printfinit>
    80005d3c:	00002517          	auipc	a0,0x2
    80005d40:	79450513          	addi	a0,a0,1940 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80005d44:	00001097          	auipc	ra,0x1
    80005d48:	ab4080e7          	jalr	-1356(ra) # 800067f8 <__printf>
    80005d4c:	00003517          	auipc	a0,0x3
    80005d50:	85c50513          	addi	a0,a0,-1956 # 800085a8 <CONSOLE_STATUS+0x598>
    80005d54:	00001097          	auipc	ra,0x1
    80005d58:	aa4080e7          	jalr	-1372(ra) # 800067f8 <__printf>
    80005d5c:	00002517          	auipc	a0,0x2
    80005d60:	77450513          	addi	a0,a0,1908 # 800084d0 <CONSOLE_STATUS+0x4c0>
    80005d64:	00001097          	auipc	ra,0x1
    80005d68:	a94080e7          	jalr	-1388(ra) # 800067f8 <__printf>
    80005d6c:	00001097          	auipc	ra,0x1
    80005d70:	4ac080e7          	jalr	1196(ra) # 80007218 <kinit>
    80005d74:	00000097          	auipc	ra,0x0
    80005d78:	148080e7          	jalr	328(ra) # 80005ebc <trapinit>
    80005d7c:	00000097          	auipc	ra,0x0
    80005d80:	16c080e7          	jalr	364(ra) # 80005ee8 <trapinithart>
    80005d84:	00000097          	auipc	ra,0x0
    80005d88:	5bc080e7          	jalr	1468(ra) # 80006340 <plicinit>
    80005d8c:	00000097          	auipc	ra,0x0
    80005d90:	5dc080e7          	jalr	1500(ra) # 80006368 <plicinithart>
    80005d94:	00000097          	auipc	ra,0x0
    80005d98:	078080e7          	jalr	120(ra) # 80005e0c <userinit>
    80005d9c:	0ff0000f          	fence
    80005da0:	00100793          	li	a5,1
    80005da4:	00003517          	auipc	a0,0x3
    80005da8:	81c50513          	addi	a0,a0,-2020 # 800085c0 <CONSOLE_STATUS+0x5b0>
    80005dac:	00f4a023          	sw	a5,0(s1)
    80005db0:	00001097          	auipc	ra,0x1
    80005db4:	a48080e7          	jalr	-1464(ra) # 800067f8 <__printf>
    80005db8:	0000006f          	j	80005db8 <system_main+0xd4>

0000000080005dbc <cpuid>:
    80005dbc:	ff010113          	addi	sp,sp,-16
    80005dc0:	00813423          	sd	s0,8(sp)
    80005dc4:	01010413          	addi	s0,sp,16
    80005dc8:	00020513          	mv	a0,tp
    80005dcc:	00813403          	ld	s0,8(sp)
    80005dd0:	0005051b          	sext.w	a0,a0
    80005dd4:	01010113          	addi	sp,sp,16
    80005dd8:	00008067          	ret

0000000080005ddc <mycpu>:
    80005ddc:	ff010113          	addi	sp,sp,-16
    80005de0:	00813423          	sd	s0,8(sp)
    80005de4:	01010413          	addi	s0,sp,16
    80005de8:	00020793          	mv	a5,tp
    80005dec:	00813403          	ld	s0,8(sp)
    80005df0:	0007879b          	sext.w	a5,a5
    80005df4:	00779793          	slli	a5,a5,0x7
    80005df8:	00005517          	auipc	a0,0x5
    80005dfc:	6c850513          	addi	a0,a0,1736 # 8000b4c0 <cpus>
    80005e00:	00f50533          	add	a0,a0,a5
    80005e04:	01010113          	addi	sp,sp,16
    80005e08:	00008067          	ret

0000000080005e0c <userinit>:
    80005e0c:	ff010113          	addi	sp,sp,-16
    80005e10:	00813423          	sd	s0,8(sp)
    80005e14:	01010413          	addi	s0,sp,16
    80005e18:	00813403          	ld	s0,8(sp)
    80005e1c:	01010113          	addi	sp,sp,16
    80005e20:	ffffb317          	auipc	t1,0xffffb
    80005e24:	7a030067          	jr	1952(t1) # 800015c0 <main>

0000000080005e28 <either_copyout>:
    80005e28:	ff010113          	addi	sp,sp,-16
    80005e2c:	00813023          	sd	s0,0(sp)
    80005e30:	00113423          	sd	ra,8(sp)
    80005e34:	01010413          	addi	s0,sp,16
    80005e38:	02051663          	bnez	a0,80005e64 <either_copyout+0x3c>
    80005e3c:	00058513          	mv	a0,a1
    80005e40:	00060593          	mv	a1,a2
    80005e44:	0006861b          	sext.w	a2,a3
    80005e48:	00002097          	auipc	ra,0x2
    80005e4c:	c5c080e7          	jalr	-932(ra) # 80007aa4 <__memmove>
    80005e50:	00813083          	ld	ra,8(sp)
    80005e54:	00013403          	ld	s0,0(sp)
    80005e58:	00000513          	li	a0,0
    80005e5c:	01010113          	addi	sp,sp,16
    80005e60:	00008067          	ret
    80005e64:	00002517          	auipc	a0,0x2
    80005e68:	79c50513          	addi	a0,a0,1948 # 80008600 <CONSOLE_STATUS+0x5f0>
    80005e6c:	00001097          	auipc	ra,0x1
    80005e70:	930080e7          	jalr	-1744(ra) # 8000679c <panic>

0000000080005e74 <either_copyin>:
    80005e74:	ff010113          	addi	sp,sp,-16
    80005e78:	00813023          	sd	s0,0(sp)
    80005e7c:	00113423          	sd	ra,8(sp)
    80005e80:	01010413          	addi	s0,sp,16
    80005e84:	02059463          	bnez	a1,80005eac <either_copyin+0x38>
    80005e88:	00060593          	mv	a1,a2
    80005e8c:	0006861b          	sext.w	a2,a3
    80005e90:	00002097          	auipc	ra,0x2
    80005e94:	c14080e7          	jalr	-1004(ra) # 80007aa4 <__memmove>
    80005e98:	00813083          	ld	ra,8(sp)
    80005e9c:	00013403          	ld	s0,0(sp)
    80005ea0:	00000513          	li	a0,0
    80005ea4:	01010113          	addi	sp,sp,16
    80005ea8:	00008067          	ret
    80005eac:	00002517          	auipc	a0,0x2
    80005eb0:	77c50513          	addi	a0,a0,1916 # 80008628 <CONSOLE_STATUS+0x618>
    80005eb4:	00001097          	auipc	ra,0x1
    80005eb8:	8e8080e7          	jalr	-1816(ra) # 8000679c <panic>

0000000080005ebc <trapinit>:
    80005ebc:	ff010113          	addi	sp,sp,-16
    80005ec0:	00813423          	sd	s0,8(sp)
    80005ec4:	01010413          	addi	s0,sp,16
    80005ec8:	00813403          	ld	s0,8(sp)
    80005ecc:	00002597          	auipc	a1,0x2
    80005ed0:	78458593          	addi	a1,a1,1924 # 80008650 <CONSOLE_STATUS+0x640>
    80005ed4:	00005517          	auipc	a0,0x5
    80005ed8:	66c50513          	addi	a0,a0,1644 # 8000b540 <tickslock>
    80005edc:	01010113          	addi	sp,sp,16
    80005ee0:	00001317          	auipc	t1,0x1
    80005ee4:	5c830067          	jr	1480(t1) # 800074a8 <initlock>

0000000080005ee8 <trapinithart>:
    80005ee8:	ff010113          	addi	sp,sp,-16
    80005eec:	00813423          	sd	s0,8(sp)
    80005ef0:	01010413          	addi	s0,sp,16
    80005ef4:	00000797          	auipc	a5,0x0
    80005ef8:	2fc78793          	addi	a5,a5,764 # 800061f0 <kernelvec>
    80005efc:	10579073          	csrw	stvec,a5
    80005f00:	00813403          	ld	s0,8(sp)
    80005f04:	01010113          	addi	sp,sp,16
    80005f08:	00008067          	ret

0000000080005f0c <usertrap>:
    80005f0c:	ff010113          	addi	sp,sp,-16
    80005f10:	00813423          	sd	s0,8(sp)
    80005f14:	01010413          	addi	s0,sp,16
    80005f18:	00813403          	ld	s0,8(sp)
    80005f1c:	01010113          	addi	sp,sp,16
    80005f20:	00008067          	ret

0000000080005f24 <usertrapret>:
    80005f24:	ff010113          	addi	sp,sp,-16
    80005f28:	00813423          	sd	s0,8(sp)
    80005f2c:	01010413          	addi	s0,sp,16
    80005f30:	00813403          	ld	s0,8(sp)
    80005f34:	01010113          	addi	sp,sp,16
    80005f38:	00008067          	ret

0000000080005f3c <kerneltrap>:
    80005f3c:	fe010113          	addi	sp,sp,-32
    80005f40:	00813823          	sd	s0,16(sp)
    80005f44:	00113c23          	sd	ra,24(sp)
    80005f48:	00913423          	sd	s1,8(sp)
    80005f4c:	02010413          	addi	s0,sp,32
    80005f50:	142025f3          	csrr	a1,scause
    80005f54:	100027f3          	csrr	a5,sstatus
    80005f58:	0027f793          	andi	a5,a5,2
    80005f5c:	10079c63          	bnez	a5,80006074 <kerneltrap+0x138>
    80005f60:	142027f3          	csrr	a5,scause
    80005f64:	0207ce63          	bltz	a5,80005fa0 <kerneltrap+0x64>
    80005f68:	00002517          	auipc	a0,0x2
    80005f6c:	73050513          	addi	a0,a0,1840 # 80008698 <CONSOLE_STATUS+0x688>
    80005f70:	00001097          	auipc	ra,0x1
    80005f74:	888080e7          	jalr	-1912(ra) # 800067f8 <__printf>
    80005f78:	141025f3          	csrr	a1,sepc
    80005f7c:	14302673          	csrr	a2,stval
    80005f80:	00002517          	auipc	a0,0x2
    80005f84:	72850513          	addi	a0,a0,1832 # 800086a8 <CONSOLE_STATUS+0x698>
    80005f88:	00001097          	auipc	ra,0x1
    80005f8c:	870080e7          	jalr	-1936(ra) # 800067f8 <__printf>
    80005f90:	00002517          	auipc	a0,0x2
    80005f94:	73050513          	addi	a0,a0,1840 # 800086c0 <CONSOLE_STATUS+0x6b0>
    80005f98:	00001097          	auipc	ra,0x1
    80005f9c:	804080e7          	jalr	-2044(ra) # 8000679c <panic>
    80005fa0:	0ff7f713          	andi	a4,a5,255
    80005fa4:	00900693          	li	a3,9
    80005fa8:	04d70063          	beq	a4,a3,80005fe8 <kerneltrap+0xac>
    80005fac:	fff00713          	li	a4,-1
    80005fb0:	03f71713          	slli	a4,a4,0x3f
    80005fb4:	00170713          	addi	a4,a4,1
    80005fb8:	fae798e3          	bne	a5,a4,80005f68 <kerneltrap+0x2c>
    80005fbc:	00000097          	auipc	ra,0x0
    80005fc0:	e00080e7          	jalr	-512(ra) # 80005dbc <cpuid>
    80005fc4:	06050663          	beqz	a0,80006030 <kerneltrap+0xf4>
    80005fc8:	144027f3          	csrr	a5,sip
    80005fcc:	ffd7f793          	andi	a5,a5,-3
    80005fd0:	14479073          	csrw	sip,a5
    80005fd4:	01813083          	ld	ra,24(sp)
    80005fd8:	01013403          	ld	s0,16(sp)
    80005fdc:	00813483          	ld	s1,8(sp)
    80005fe0:	02010113          	addi	sp,sp,32
    80005fe4:	00008067          	ret
    80005fe8:	00000097          	auipc	ra,0x0
    80005fec:	3cc080e7          	jalr	972(ra) # 800063b4 <plic_claim>
    80005ff0:	00a00793          	li	a5,10
    80005ff4:	00050493          	mv	s1,a0
    80005ff8:	06f50863          	beq	a0,a5,80006068 <kerneltrap+0x12c>
    80005ffc:	fc050ce3          	beqz	a0,80005fd4 <kerneltrap+0x98>
    80006000:	00050593          	mv	a1,a0
    80006004:	00002517          	auipc	a0,0x2
    80006008:	67450513          	addi	a0,a0,1652 # 80008678 <CONSOLE_STATUS+0x668>
    8000600c:	00000097          	auipc	ra,0x0
    80006010:	7ec080e7          	jalr	2028(ra) # 800067f8 <__printf>
    80006014:	01013403          	ld	s0,16(sp)
    80006018:	01813083          	ld	ra,24(sp)
    8000601c:	00048513          	mv	a0,s1
    80006020:	00813483          	ld	s1,8(sp)
    80006024:	02010113          	addi	sp,sp,32
    80006028:	00000317          	auipc	t1,0x0
    8000602c:	3c430067          	jr	964(t1) # 800063ec <plic_complete>
    80006030:	00005517          	auipc	a0,0x5
    80006034:	51050513          	addi	a0,a0,1296 # 8000b540 <tickslock>
    80006038:	00001097          	auipc	ra,0x1
    8000603c:	494080e7          	jalr	1172(ra) # 800074cc <acquire>
    80006040:	00004717          	auipc	a4,0x4
    80006044:	3b470713          	addi	a4,a4,948 # 8000a3f4 <ticks>
    80006048:	00072783          	lw	a5,0(a4)
    8000604c:	00005517          	auipc	a0,0x5
    80006050:	4f450513          	addi	a0,a0,1268 # 8000b540 <tickslock>
    80006054:	0017879b          	addiw	a5,a5,1
    80006058:	00f72023          	sw	a5,0(a4)
    8000605c:	00001097          	auipc	ra,0x1
    80006060:	53c080e7          	jalr	1340(ra) # 80007598 <release>
    80006064:	f65ff06f          	j	80005fc8 <kerneltrap+0x8c>
    80006068:	00001097          	auipc	ra,0x1
    8000606c:	098080e7          	jalr	152(ra) # 80007100 <uartintr>
    80006070:	fa5ff06f          	j	80006014 <kerneltrap+0xd8>
    80006074:	00002517          	auipc	a0,0x2
    80006078:	5e450513          	addi	a0,a0,1508 # 80008658 <CONSOLE_STATUS+0x648>
    8000607c:	00000097          	auipc	ra,0x0
    80006080:	720080e7          	jalr	1824(ra) # 8000679c <panic>

0000000080006084 <clockintr>:
    80006084:	fe010113          	addi	sp,sp,-32
    80006088:	00813823          	sd	s0,16(sp)
    8000608c:	00913423          	sd	s1,8(sp)
    80006090:	00113c23          	sd	ra,24(sp)
    80006094:	02010413          	addi	s0,sp,32
    80006098:	00005497          	auipc	s1,0x5
    8000609c:	4a848493          	addi	s1,s1,1192 # 8000b540 <tickslock>
    800060a0:	00048513          	mv	a0,s1
    800060a4:	00001097          	auipc	ra,0x1
    800060a8:	428080e7          	jalr	1064(ra) # 800074cc <acquire>
    800060ac:	00004717          	auipc	a4,0x4
    800060b0:	34870713          	addi	a4,a4,840 # 8000a3f4 <ticks>
    800060b4:	00072783          	lw	a5,0(a4)
    800060b8:	01013403          	ld	s0,16(sp)
    800060bc:	01813083          	ld	ra,24(sp)
    800060c0:	00048513          	mv	a0,s1
    800060c4:	0017879b          	addiw	a5,a5,1
    800060c8:	00813483          	ld	s1,8(sp)
    800060cc:	00f72023          	sw	a5,0(a4)
    800060d0:	02010113          	addi	sp,sp,32
    800060d4:	00001317          	auipc	t1,0x1
    800060d8:	4c430067          	jr	1220(t1) # 80007598 <release>

00000000800060dc <devintr>:
    800060dc:	142027f3          	csrr	a5,scause
    800060e0:	00000513          	li	a0,0
    800060e4:	0007c463          	bltz	a5,800060ec <devintr+0x10>
    800060e8:	00008067          	ret
    800060ec:	fe010113          	addi	sp,sp,-32
    800060f0:	00813823          	sd	s0,16(sp)
    800060f4:	00113c23          	sd	ra,24(sp)
    800060f8:	00913423          	sd	s1,8(sp)
    800060fc:	02010413          	addi	s0,sp,32
    80006100:	0ff7f713          	andi	a4,a5,255
    80006104:	00900693          	li	a3,9
    80006108:	04d70c63          	beq	a4,a3,80006160 <devintr+0x84>
    8000610c:	fff00713          	li	a4,-1
    80006110:	03f71713          	slli	a4,a4,0x3f
    80006114:	00170713          	addi	a4,a4,1
    80006118:	00e78c63          	beq	a5,a4,80006130 <devintr+0x54>
    8000611c:	01813083          	ld	ra,24(sp)
    80006120:	01013403          	ld	s0,16(sp)
    80006124:	00813483          	ld	s1,8(sp)
    80006128:	02010113          	addi	sp,sp,32
    8000612c:	00008067          	ret
    80006130:	00000097          	auipc	ra,0x0
    80006134:	c8c080e7          	jalr	-884(ra) # 80005dbc <cpuid>
    80006138:	06050663          	beqz	a0,800061a4 <devintr+0xc8>
    8000613c:	144027f3          	csrr	a5,sip
    80006140:	ffd7f793          	andi	a5,a5,-3
    80006144:	14479073          	csrw	sip,a5
    80006148:	01813083          	ld	ra,24(sp)
    8000614c:	01013403          	ld	s0,16(sp)
    80006150:	00813483          	ld	s1,8(sp)
    80006154:	00200513          	li	a0,2
    80006158:	02010113          	addi	sp,sp,32
    8000615c:	00008067          	ret
    80006160:	00000097          	auipc	ra,0x0
    80006164:	254080e7          	jalr	596(ra) # 800063b4 <plic_claim>
    80006168:	00a00793          	li	a5,10
    8000616c:	00050493          	mv	s1,a0
    80006170:	06f50663          	beq	a0,a5,800061dc <devintr+0x100>
    80006174:	00100513          	li	a0,1
    80006178:	fa0482e3          	beqz	s1,8000611c <devintr+0x40>
    8000617c:	00048593          	mv	a1,s1
    80006180:	00002517          	auipc	a0,0x2
    80006184:	4f850513          	addi	a0,a0,1272 # 80008678 <CONSOLE_STATUS+0x668>
    80006188:	00000097          	auipc	ra,0x0
    8000618c:	670080e7          	jalr	1648(ra) # 800067f8 <__printf>
    80006190:	00048513          	mv	a0,s1
    80006194:	00000097          	auipc	ra,0x0
    80006198:	258080e7          	jalr	600(ra) # 800063ec <plic_complete>
    8000619c:	00100513          	li	a0,1
    800061a0:	f7dff06f          	j	8000611c <devintr+0x40>
    800061a4:	00005517          	auipc	a0,0x5
    800061a8:	39c50513          	addi	a0,a0,924 # 8000b540 <tickslock>
    800061ac:	00001097          	auipc	ra,0x1
    800061b0:	320080e7          	jalr	800(ra) # 800074cc <acquire>
    800061b4:	00004717          	auipc	a4,0x4
    800061b8:	24070713          	addi	a4,a4,576 # 8000a3f4 <ticks>
    800061bc:	00072783          	lw	a5,0(a4)
    800061c0:	00005517          	auipc	a0,0x5
    800061c4:	38050513          	addi	a0,a0,896 # 8000b540 <tickslock>
    800061c8:	0017879b          	addiw	a5,a5,1
    800061cc:	00f72023          	sw	a5,0(a4)
    800061d0:	00001097          	auipc	ra,0x1
    800061d4:	3c8080e7          	jalr	968(ra) # 80007598 <release>
    800061d8:	f65ff06f          	j	8000613c <devintr+0x60>
    800061dc:	00001097          	auipc	ra,0x1
    800061e0:	f24080e7          	jalr	-220(ra) # 80007100 <uartintr>
    800061e4:	fadff06f          	j	80006190 <devintr+0xb4>
	...

00000000800061f0 <kernelvec>:
    800061f0:	f0010113          	addi	sp,sp,-256
    800061f4:	00113023          	sd	ra,0(sp)
    800061f8:	00213423          	sd	sp,8(sp)
    800061fc:	00313823          	sd	gp,16(sp)
    80006200:	00413c23          	sd	tp,24(sp)
    80006204:	02513023          	sd	t0,32(sp)
    80006208:	02613423          	sd	t1,40(sp)
    8000620c:	02713823          	sd	t2,48(sp)
    80006210:	02813c23          	sd	s0,56(sp)
    80006214:	04913023          	sd	s1,64(sp)
    80006218:	04a13423          	sd	a0,72(sp)
    8000621c:	04b13823          	sd	a1,80(sp)
    80006220:	04c13c23          	sd	a2,88(sp)
    80006224:	06d13023          	sd	a3,96(sp)
    80006228:	06e13423          	sd	a4,104(sp)
    8000622c:	06f13823          	sd	a5,112(sp)
    80006230:	07013c23          	sd	a6,120(sp)
    80006234:	09113023          	sd	a7,128(sp)
    80006238:	09213423          	sd	s2,136(sp)
    8000623c:	09313823          	sd	s3,144(sp)
    80006240:	09413c23          	sd	s4,152(sp)
    80006244:	0b513023          	sd	s5,160(sp)
    80006248:	0b613423          	sd	s6,168(sp)
    8000624c:	0b713823          	sd	s7,176(sp)
    80006250:	0b813c23          	sd	s8,184(sp)
    80006254:	0d913023          	sd	s9,192(sp)
    80006258:	0da13423          	sd	s10,200(sp)
    8000625c:	0db13823          	sd	s11,208(sp)
    80006260:	0dc13c23          	sd	t3,216(sp)
    80006264:	0fd13023          	sd	t4,224(sp)
    80006268:	0fe13423          	sd	t5,232(sp)
    8000626c:	0ff13823          	sd	t6,240(sp)
    80006270:	ccdff0ef          	jal	ra,80005f3c <kerneltrap>
    80006274:	00013083          	ld	ra,0(sp)
    80006278:	00813103          	ld	sp,8(sp)
    8000627c:	01013183          	ld	gp,16(sp)
    80006280:	02013283          	ld	t0,32(sp)
    80006284:	02813303          	ld	t1,40(sp)
    80006288:	03013383          	ld	t2,48(sp)
    8000628c:	03813403          	ld	s0,56(sp)
    80006290:	04013483          	ld	s1,64(sp)
    80006294:	04813503          	ld	a0,72(sp)
    80006298:	05013583          	ld	a1,80(sp)
    8000629c:	05813603          	ld	a2,88(sp)
    800062a0:	06013683          	ld	a3,96(sp)
    800062a4:	06813703          	ld	a4,104(sp)
    800062a8:	07013783          	ld	a5,112(sp)
    800062ac:	07813803          	ld	a6,120(sp)
    800062b0:	08013883          	ld	a7,128(sp)
    800062b4:	08813903          	ld	s2,136(sp)
    800062b8:	09013983          	ld	s3,144(sp)
    800062bc:	09813a03          	ld	s4,152(sp)
    800062c0:	0a013a83          	ld	s5,160(sp)
    800062c4:	0a813b03          	ld	s6,168(sp)
    800062c8:	0b013b83          	ld	s7,176(sp)
    800062cc:	0b813c03          	ld	s8,184(sp)
    800062d0:	0c013c83          	ld	s9,192(sp)
    800062d4:	0c813d03          	ld	s10,200(sp)
    800062d8:	0d013d83          	ld	s11,208(sp)
    800062dc:	0d813e03          	ld	t3,216(sp)
    800062e0:	0e013e83          	ld	t4,224(sp)
    800062e4:	0e813f03          	ld	t5,232(sp)
    800062e8:	0f013f83          	ld	t6,240(sp)
    800062ec:	10010113          	addi	sp,sp,256
    800062f0:	10200073          	sret
    800062f4:	00000013          	nop
    800062f8:	00000013          	nop
    800062fc:	00000013          	nop

0000000080006300 <timervec>:
    80006300:	34051573          	csrrw	a0,mscratch,a0
    80006304:	00b53023          	sd	a1,0(a0)
    80006308:	00c53423          	sd	a2,8(a0)
    8000630c:	00d53823          	sd	a3,16(a0)
    80006310:	01853583          	ld	a1,24(a0)
    80006314:	02053603          	ld	a2,32(a0)
    80006318:	0005b683          	ld	a3,0(a1)
    8000631c:	00c686b3          	add	a3,a3,a2
    80006320:	00d5b023          	sd	a3,0(a1)
    80006324:	00200593          	li	a1,2
    80006328:	14459073          	csrw	sip,a1
    8000632c:	01053683          	ld	a3,16(a0)
    80006330:	00853603          	ld	a2,8(a0)
    80006334:	00053583          	ld	a1,0(a0)
    80006338:	34051573          	csrrw	a0,mscratch,a0
    8000633c:	30200073          	mret

0000000080006340 <plicinit>:
    80006340:	ff010113          	addi	sp,sp,-16
    80006344:	00813423          	sd	s0,8(sp)
    80006348:	01010413          	addi	s0,sp,16
    8000634c:	00813403          	ld	s0,8(sp)
    80006350:	0c0007b7          	lui	a5,0xc000
    80006354:	00100713          	li	a4,1
    80006358:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000635c:	00e7a223          	sw	a4,4(a5)
    80006360:	01010113          	addi	sp,sp,16
    80006364:	00008067          	ret

0000000080006368 <plicinithart>:
    80006368:	ff010113          	addi	sp,sp,-16
    8000636c:	00813023          	sd	s0,0(sp)
    80006370:	00113423          	sd	ra,8(sp)
    80006374:	01010413          	addi	s0,sp,16
    80006378:	00000097          	auipc	ra,0x0
    8000637c:	a44080e7          	jalr	-1468(ra) # 80005dbc <cpuid>
    80006380:	0085171b          	slliw	a4,a0,0x8
    80006384:	0c0027b7          	lui	a5,0xc002
    80006388:	00e787b3          	add	a5,a5,a4
    8000638c:	40200713          	li	a4,1026
    80006390:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006394:	00813083          	ld	ra,8(sp)
    80006398:	00013403          	ld	s0,0(sp)
    8000639c:	00d5151b          	slliw	a0,a0,0xd
    800063a0:	0c2017b7          	lui	a5,0xc201
    800063a4:	00a78533          	add	a0,a5,a0
    800063a8:	00052023          	sw	zero,0(a0)
    800063ac:	01010113          	addi	sp,sp,16
    800063b0:	00008067          	ret

00000000800063b4 <plic_claim>:
    800063b4:	ff010113          	addi	sp,sp,-16
    800063b8:	00813023          	sd	s0,0(sp)
    800063bc:	00113423          	sd	ra,8(sp)
    800063c0:	01010413          	addi	s0,sp,16
    800063c4:	00000097          	auipc	ra,0x0
    800063c8:	9f8080e7          	jalr	-1544(ra) # 80005dbc <cpuid>
    800063cc:	00813083          	ld	ra,8(sp)
    800063d0:	00013403          	ld	s0,0(sp)
    800063d4:	00d5151b          	slliw	a0,a0,0xd
    800063d8:	0c2017b7          	lui	a5,0xc201
    800063dc:	00a78533          	add	a0,a5,a0
    800063e0:	00452503          	lw	a0,4(a0)
    800063e4:	01010113          	addi	sp,sp,16
    800063e8:	00008067          	ret

00000000800063ec <plic_complete>:
    800063ec:	fe010113          	addi	sp,sp,-32
    800063f0:	00813823          	sd	s0,16(sp)
    800063f4:	00913423          	sd	s1,8(sp)
    800063f8:	00113c23          	sd	ra,24(sp)
    800063fc:	02010413          	addi	s0,sp,32
    80006400:	00050493          	mv	s1,a0
    80006404:	00000097          	auipc	ra,0x0
    80006408:	9b8080e7          	jalr	-1608(ra) # 80005dbc <cpuid>
    8000640c:	01813083          	ld	ra,24(sp)
    80006410:	01013403          	ld	s0,16(sp)
    80006414:	00d5179b          	slliw	a5,a0,0xd
    80006418:	0c201737          	lui	a4,0xc201
    8000641c:	00f707b3          	add	a5,a4,a5
    80006420:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006424:	00813483          	ld	s1,8(sp)
    80006428:	02010113          	addi	sp,sp,32
    8000642c:	00008067          	ret

0000000080006430 <consolewrite>:
    80006430:	fb010113          	addi	sp,sp,-80
    80006434:	04813023          	sd	s0,64(sp)
    80006438:	04113423          	sd	ra,72(sp)
    8000643c:	02913c23          	sd	s1,56(sp)
    80006440:	03213823          	sd	s2,48(sp)
    80006444:	03313423          	sd	s3,40(sp)
    80006448:	03413023          	sd	s4,32(sp)
    8000644c:	01513c23          	sd	s5,24(sp)
    80006450:	05010413          	addi	s0,sp,80
    80006454:	06c05c63          	blez	a2,800064cc <consolewrite+0x9c>
    80006458:	00060993          	mv	s3,a2
    8000645c:	00050a13          	mv	s4,a0
    80006460:	00058493          	mv	s1,a1
    80006464:	00000913          	li	s2,0
    80006468:	fff00a93          	li	s5,-1
    8000646c:	01c0006f          	j	80006488 <consolewrite+0x58>
    80006470:	fbf44503          	lbu	a0,-65(s0)
    80006474:	0019091b          	addiw	s2,s2,1
    80006478:	00148493          	addi	s1,s1,1
    8000647c:	00001097          	auipc	ra,0x1
    80006480:	a9c080e7          	jalr	-1380(ra) # 80006f18 <uartputc>
    80006484:	03298063          	beq	s3,s2,800064a4 <consolewrite+0x74>
    80006488:	00048613          	mv	a2,s1
    8000648c:	00100693          	li	a3,1
    80006490:	000a0593          	mv	a1,s4
    80006494:	fbf40513          	addi	a0,s0,-65
    80006498:	00000097          	auipc	ra,0x0
    8000649c:	9dc080e7          	jalr	-1572(ra) # 80005e74 <either_copyin>
    800064a0:	fd5518e3          	bne	a0,s5,80006470 <consolewrite+0x40>
    800064a4:	04813083          	ld	ra,72(sp)
    800064a8:	04013403          	ld	s0,64(sp)
    800064ac:	03813483          	ld	s1,56(sp)
    800064b0:	02813983          	ld	s3,40(sp)
    800064b4:	02013a03          	ld	s4,32(sp)
    800064b8:	01813a83          	ld	s5,24(sp)
    800064bc:	00090513          	mv	a0,s2
    800064c0:	03013903          	ld	s2,48(sp)
    800064c4:	05010113          	addi	sp,sp,80
    800064c8:	00008067          	ret
    800064cc:	00000913          	li	s2,0
    800064d0:	fd5ff06f          	j	800064a4 <consolewrite+0x74>

00000000800064d4 <consoleread>:
    800064d4:	f9010113          	addi	sp,sp,-112
    800064d8:	06813023          	sd	s0,96(sp)
    800064dc:	04913c23          	sd	s1,88(sp)
    800064e0:	05213823          	sd	s2,80(sp)
    800064e4:	05313423          	sd	s3,72(sp)
    800064e8:	05413023          	sd	s4,64(sp)
    800064ec:	03513c23          	sd	s5,56(sp)
    800064f0:	03613823          	sd	s6,48(sp)
    800064f4:	03713423          	sd	s7,40(sp)
    800064f8:	03813023          	sd	s8,32(sp)
    800064fc:	06113423          	sd	ra,104(sp)
    80006500:	01913c23          	sd	s9,24(sp)
    80006504:	07010413          	addi	s0,sp,112
    80006508:	00060b93          	mv	s7,a2
    8000650c:	00050913          	mv	s2,a0
    80006510:	00058c13          	mv	s8,a1
    80006514:	00060b1b          	sext.w	s6,a2
    80006518:	00005497          	auipc	s1,0x5
    8000651c:	05048493          	addi	s1,s1,80 # 8000b568 <cons>
    80006520:	00400993          	li	s3,4
    80006524:	fff00a13          	li	s4,-1
    80006528:	00a00a93          	li	s5,10
    8000652c:	05705e63          	blez	s7,80006588 <consoleread+0xb4>
    80006530:	09c4a703          	lw	a4,156(s1)
    80006534:	0984a783          	lw	a5,152(s1)
    80006538:	0007071b          	sext.w	a4,a4
    8000653c:	08e78463          	beq	a5,a4,800065c4 <consoleread+0xf0>
    80006540:	07f7f713          	andi	a4,a5,127
    80006544:	00e48733          	add	a4,s1,a4
    80006548:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000654c:	0017869b          	addiw	a3,a5,1
    80006550:	08d4ac23          	sw	a3,152(s1)
    80006554:	00070c9b          	sext.w	s9,a4
    80006558:	0b370663          	beq	a4,s3,80006604 <consoleread+0x130>
    8000655c:	00100693          	li	a3,1
    80006560:	f9f40613          	addi	a2,s0,-97
    80006564:	000c0593          	mv	a1,s8
    80006568:	00090513          	mv	a0,s2
    8000656c:	f8e40fa3          	sb	a4,-97(s0)
    80006570:	00000097          	auipc	ra,0x0
    80006574:	8b8080e7          	jalr	-1864(ra) # 80005e28 <either_copyout>
    80006578:	01450863          	beq	a0,s4,80006588 <consoleread+0xb4>
    8000657c:	001c0c13          	addi	s8,s8,1
    80006580:	fffb8b9b          	addiw	s7,s7,-1
    80006584:	fb5c94e3          	bne	s9,s5,8000652c <consoleread+0x58>
    80006588:	000b851b          	sext.w	a0,s7
    8000658c:	06813083          	ld	ra,104(sp)
    80006590:	06013403          	ld	s0,96(sp)
    80006594:	05813483          	ld	s1,88(sp)
    80006598:	05013903          	ld	s2,80(sp)
    8000659c:	04813983          	ld	s3,72(sp)
    800065a0:	04013a03          	ld	s4,64(sp)
    800065a4:	03813a83          	ld	s5,56(sp)
    800065a8:	02813b83          	ld	s7,40(sp)
    800065ac:	02013c03          	ld	s8,32(sp)
    800065b0:	01813c83          	ld	s9,24(sp)
    800065b4:	40ab053b          	subw	a0,s6,a0
    800065b8:	03013b03          	ld	s6,48(sp)
    800065bc:	07010113          	addi	sp,sp,112
    800065c0:	00008067          	ret
    800065c4:	00001097          	auipc	ra,0x1
    800065c8:	1d8080e7          	jalr	472(ra) # 8000779c <push_on>
    800065cc:	0984a703          	lw	a4,152(s1)
    800065d0:	09c4a783          	lw	a5,156(s1)
    800065d4:	0007879b          	sext.w	a5,a5
    800065d8:	fef70ce3          	beq	a4,a5,800065d0 <consoleread+0xfc>
    800065dc:	00001097          	auipc	ra,0x1
    800065e0:	234080e7          	jalr	564(ra) # 80007810 <pop_on>
    800065e4:	0984a783          	lw	a5,152(s1)
    800065e8:	07f7f713          	andi	a4,a5,127
    800065ec:	00e48733          	add	a4,s1,a4
    800065f0:	01874703          	lbu	a4,24(a4)
    800065f4:	0017869b          	addiw	a3,a5,1
    800065f8:	08d4ac23          	sw	a3,152(s1)
    800065fc:	00070c9b          	sext.w	s9,a4
    80006600:	f5371ee3          	bne	a4,s3,8000655c <consoleread+0x88>
    80006604:	000b851b          	sext.w	a0,s7
    80006608:	f96bf2e3          	bgeu	s7,s6,8000658c <consoleread+0xb8>
    8000660c:	08f4ac23          	sw	a5,152(s1)
    80006610:	f7dff06f          	j	8000658c <consoleread+0xb8>

0000000080006614 <consputc>:
    80006614:	10000793          	li	a5,256
    80006618:	00f50663          	beq	a0,a5,80006624 <consputc+0x10>
    8000661c:	00001317          	auipc	t1,0x1
    80006620:	9f430067          	jr	-1548(t1) # 80007010 <uartputc_sync>
    80006624:	ff010113          	addi	sp,sp,-16
    80006628:	00113423          	sd	ra,8(sp)
    8000662c:	00813023          	sd	s0,0(sp)
    80006630:	01010413          	addi	s0,sp,16
    80006634:	00800513          	li	a0,8
    80006638:	00001097          	auipc	ra,0x1
    8000663c:	9d8080e7          	jalr	-1576(ra) # 80007010 <uartputc_sync>
    80006640:	02000513          	li	a0,32
    80006644:	00001097          	auipc	ra,0x1
    80006648:	9cc080e7          	jalr	-1588(ra) # 80007010 <uartputc_sync>
    8000664c:	00013403          	ld	s0,0(sp)
    80006650:	00813083          	ld	ra,8(sp)
    80006654:	00800513          	li	a0,8
    80006658:	01010113          	addi	sp,sp,16
    8000665c:	00001317          	auipc	t1,0x1
    80006660:	9b430067          	jr	-1612(t1) # 80007010 <uartputc_sync>

0000000080006664 <consoleintr>:
    80006664:	fe010113          	addi	sp,sp,-32
    80006668:	00813823          	sd	s0,16(sp)
    8000666c:	00913423          	sd	s1,8(sp)
    80006670:	01213023          	sd	s2,0(sp)
    80006674:	00113c23          	sd	ra,24(sp)
    80006678:	02010413          	addi	s0,sp,32
    8000667c:	00005917          	auipc	s2,0x5
    80006680:	eec90913          	addi	s2,s2,-276 # 8000b568 <cons>
    80006684:	00050493          	mv	s1,a0
    80006688:	00090513          	mv	a0,s2
    8000668c:	00001097          	auipc	ra,0x1
    80006690:	e40080e7          	jalr	-448(ra) # 800074cc <acquire>
    80006694:	02048c63          	beqz	s1,800066cc <consoleintr+0x68>
    80006698:	0a092783          	lw	a5,160(s2)
    8000669c:	09892703          	lw	a4,152(s2)
    800066a0:	07f00693          	li	a3,127
    800066a4:	40e7873b          	subw	a4,a5,a4
    800066a8:	02e6e263          	bltu	a3,a4,800066cc <consoleintr+0x68>
    800066ac:	00d00713          	li	a4,13
    800066b0:	04e48063          	beq	s1,a4,800066f0 <consoleintr+0x8c>
    800066b4:	07f7f713          	andi	a4,a5,127
    800066b8:	00e90733          	add	a4,s2,a4
    800066bc:	0017879b          	addiw	a5,a5,1
    800066c0:	0af92023          	sw	a5,160(s2)
    800066c4:	00970c23          	sb	s1,24(a4)
    800066c8:	08f92e23          	sw	a5,156(s2)
    800066cc:	01013403          	ld	s0,16(sp)
    800066d0:	01813083          	ld	ra,24(sp)
    800066d4:	00813483          	ld	s1,8(sp)
    800066d8:	00013903          	ld	s2,0(sp)
    800066dc:	00005517          	auipc	a0,0x5
    800066e0:	e8c50513          	addi	a0,a0,-372 # 8000b568 <cons>
    800066e4:	02010113          	addi	sp,sp,32
    800066e8:	00001317          	auipc	t1,0x1
    800066ec:	eb030067          	jr	-336(t1) # 80007598 <release>
    800066f0:	00a00493          	li	s1,10
    800066f4:	fc1ff06f          	j	800066b4 <consoleintr+0x50>

00000000800066f8 <consoleinit>:
    800066f8:	fe010113          	addi	sp,sp,-32
    800066fc:	00113c23          	sd	ra,24(sp)
    80006700:	00813823          	sd	s0,16(sp)
    80006704:	00913423          	sd	s1,8(sp)
    80006708:	02010413          	addi	s0,sp,32
    8000670c:	00005497          	auipc	s1,0x5
    80006710:	e5c48493          	addi	s1,s1,-420 # 8000b568 <cons>
    80006714:	00048513          	mv	a0,s1
    80006718:	00002597          	auipc	a1,0x2
    8000671c:	fb858593          	addi	a1,a1,-72 # 800086d0 <CONSOLE_STATUS+0x6c0>
    80006720:	00001097          	auipc	ra,0x1
    80006724:	d88080e7          	jalr	-632(ra) # 800074a8 <initlock>
    80006728:	00000097          	auipc	ra,0x0
    8000672c:	7ac080e7          	jalr	1964(ra) # 80006ed4 <uartinit>
    80006730:	01813083          	ld	ra,24(sp)
    80006734:	01013403          	ld	s0,16(sp)
    80006738:	00000797          	auipc	a5,0x0
    8000673c:	d9c78793          	addi	a5,a5,-612 # 800064d4 <consoleread>
    80006740:	0af4bc23          	sd	a5,184(s1)
    80006744:	00000797          	auipc	a5,0x0
    80006748:	cec78793          	addi	a5,a5,-788 # 80006430 <consolewrite>
    8000674c:	0cf4b023          	sd	a5,192(s1)
    80006750:	00813483          	ld	s1,8(sp)
    80006754:	02010113          	addi	sp,sp,32
    80006758:	00008067          	ret

000000008000675c <console_read>:
    8000675c:	ff010113          	addi	sp,sp,-16
    80006760:	00813423          	sd	s0,8(sp)
    80006764:	01010413          	addi	s0,sp,16
    80006768:	00813403          	ld	s0,8(sp)
    8000676c:	00005317          	auipc	t1,0x5
    80006770:	eb433303          	ld	t1,-332(t1) # 8000b620 <devsw+0x10>
    80006774:	01010113          	addi	sp,sp,16
    80006778:	00030067          	jr	t1

000000008000677c <console_write>:
    8000677c:	ff010113          	addi	sp,sp,-16
    80006780:	00813423          	sd	s0,8(sp)
    80006784:	01010413          	addi	s0,sp,16
    80006788:	00813403          	ld	s0,8(sp)
    8000678c:	00005317          	auipc	t1,0x5
    80006790:	e9c33303          	ld	t1,-356(t1) # 8000b628 <devsw+0x18>
    80006794:	01010113          	addi	sp,sp,16
    80006798:	00030067          	jr	t1

000000008000679c <panic>:
    8000679c:	fe010113          	addi	sp,sp,-32
    800067a0:	00113c23          	sd	ra,24(sp)
    800067a4:	00813823          	sd	s0,16(sp)
    800067a8:	00913423          	sd	s1,8(sp)
    800067ac:	02010413          	addi	s0,sp,32
    800067b0:	00050493          	mv	s1,a0
    800067b4:	00002517          	auipc	a0,0x2
    800067b8:	f2450513          	addi	a0,a0,-220 # 800086d8 <CONSOLE_STATUS+0x6c8>
    800067bc:	00005797          	auipc	a5,0x5
    800067c0:	f007a623          	sw	zero,-244(a5) # 8000b6c8 <pr+0x18>
    800067c4:	00000097          	auipc	ra,0x0
    800067c8:	034080e7          	jalr	52(ra) # 800067f8 <__printf>
    800067cc:	00048513          	mv	a0,s1
    800067d0:	00000097          	auipc	ra,0x0
    800067d4:	028080e7          	jalr	40(ra) # 800067f8 <__printf>
    800067d8:	00002517          	auipc	a0,0x2
    800067dc:	cf850513          	addi	a0,a0,-776 # 800084d0 <CONSOLE_STATUS+0x4c0>
    800067e0:	00000097          	auipc	ra,0x0
    800067e4:	018080e7          	jalr	24(ra) # 800067f8 <__printf>
    800067e8:	00100793          	li	a5,1
    800067ec:	00004717          	auipc	a4,0x4
    800067f0:	c0f72623          	sw	a5,-1012(a4) # 8000a3f8 <panicked>
    800067f4:	0000006f          	j	800067f4 <panic+0x58>

00000000800067f8 <__printf>:
    800067f8:	f3010113          	addi	sp,sp,-208
    800067fc:	08813023          	sd	s0,128(sp)
    80006800:	07313423          	sd	s3,104(sp)
    80006804:	09010413          	addi	s0,sp,144
    80006808:	05813023          	sd	s8,64(sp)
    8000680c:	08113423          	sd	ra,136(sp)
    80006810:	06913c23          	sd	s1,120(sp)
    80006814:	07213823          	sd	s2,112(sp)
    80006818:	07413023          	sd	s4,96(sp)
    8000681c:	05513c23          	sd	s5,88(sp)
    80006820:	05613823          	sd	s6,80(sp)
    80006824:	05713423          	sd	s7,72(sp)
    80006828:	03913c23          	sd	s9,56(sp)
    8000682c:	03a13823          	sd	s10,48(sp)
    80006830:	03b13423          	sd	s11,40(sp)
    80006834:	00005317          	auipc	t1,0x5
    80006838:	e7c30313          	addi	t1,t1,-388 # 8000b6b0 <pr>
    8000683c:	01832c03          	lw	s8,24(t1)
    80006840:	00b43423          	sd	a1,8(s0)
    80006844:	00c43823          	sd	a2,16(s0)
    80006848:	00d43c23          	sd	a3,24(s0)
    8000684c:	02e43023          	sd	a4,32(s0)
    80006850:	02f43423          	sd	a5,40(s0)
    80006854:	03043823          	sd	a6,48(s0)
    80006858:	03143c23          	sd	a7,56(s0)
    8000685c:	00050993          	mv	s3,a0
    80006860:	4a0c1663          	bnez	s8,80006d0c <__printf+0x514>
    80006864:	60098c63          	beqz	s3,80006e7c <__printf+0x684>
    80006868:	0009c503          	lbu	a0,0(s3)
    8000686c:	00840793          	addi	a5,s0,8
    80006870:	f6f43c23          	sd	a5,-136(s0)
    80006874:	00000493          	li	s1,0
    80006878:	22050063          	beqz	a0,80006a98 <__printf+0x2a0>
    8000687c:	00002a37          	lui	s4,0x2
    80006880:	00018ab7          	lui	s5,0x18
    80006884:	000f4b37          	lui	s6,0xf4
    80006888:	00989bb7          	lui	s7,0x989
    8000688c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006890:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006894:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006898:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000689c:	00148c9b          	addiw	s9,s1,1
    800068a0:	02500793          	li	a5,37
    800068a4:	01998933          	add	s2,s3,s9
    800068a8:	38f51263          	bne	a0,a5,80006c2c <__printf+0x434>
    800068ac:	00094783          	lbu	a5,0(s2)
    800068b0:	00078c9b          	sext.w	s9,a5
    800068b4:	1e078263          	beqz	a5,80006a98 <__printf+0x2a0>
    800068b8:	0024849b          	addiw	s1,s1,2
    800068bc:	07000713          	li	a4,112
    800068c0:	00998933          	add	s2,s3,s1
    800068c4:	38e78a63          	beq	a5,a4,80006c58 <__printf+0x460>
    800068c8:	20f76863          	bltu	a4,a5,80006ad8 <__printf+0x2e0>
    800068cc:	42a78863          	beq	a5,a0,80006cfc <__printf+0x504>
    800068d0:	06400713          	li	a4,100
    800068d4:	40e79663          	bne	a5,a4,80006ce0 <__printf+0x4e8>
    800068d8:	f7843783          	ld	a5,-136(s0)
    800068dc:	0007a603          	lw	a2,0(a5)
    800068e0:	00878793          	addi	a5,a5,8
    800068e4:	f6f43c23          	sd	a5,-136(s0)
    800068e8:	42064a63          	bltz	a2,80006d1c <__printf+0x524>
    800068ec:	00a00713          	li	a4,10
    800068f0:	02e677bb          	remuw	a5,a2,a4
    800068f4:	00002d97          	auipc	s11,0x2
    800068f8:	e0cd8d93          	addi	s11,s11,-500 # 80008700 <digits>
    800068fc:	00900593          	li	a1,9
    80006900:	0006051b          	sext.w	a0,a2
    80006904:	00000c93          	li	s9,0
    80006908:	02079793          	slli	a5,a5,0x20
    8000690c:	0207d793          	srli	a5,a5,0x20
    80006910:	00fd87b3          	add	a5,s11,a5
    80006914:	0007c783          	lbu	a5,0(a5)
    80006918:	02e656bb          	divuw	a3,a2,a4
    8000691c:	f8f40023          	sb	a5,-128(s0)
    80006920:	14c5d863          	bge	a1,a2,80006a70 <__printf+0x278>
    80006924:	06300593          	li	a1,99
    80006928:	00100c93          	li	s9,1
    8000692c:	02e6f7bb          	remuw	a5,a3,a4
    80006930:	02079793          	slli	a5,a5,0x20
    80006934:	0207d793          	srli	a5,a5,0x20
    80006938:	00fd87b3          	add	a5,s11,a5
    8000693c:	0007c783          	lbu	a5,0(a5)
    80006940:	02e6d73b          	divuw	a4,a3,a4
    80006944:	f8f400a3          	sb	a5,-127(s0)
    80006948:	12a5f463          	bgeu	a1,a0,80006a70 <__printf+0x278>
    8000694c:	00a00693          	li	a3,10
    80006950:	00900593          	li	a1,9
    80006954:	02d777bb          	remuw	a5,a4,a3
    80006958:	02079793          	slli	a5,a5,0x20
    8000695c:	0207d793          	srli	a5,a5,0x20
    80006960:	00fd87b3          	add	a5,s11,a5
    80006964:	0007c503          	lbu	a0,0(a5)
    80006968:	02d757bb          	divuw	a5,a4,a3
    8000696c:	f8a40123          	sb	a0,-126(s0)
    80006970:	48e5f263          	bgeu	a1,a4,80006df4 <__printf+0x5fc>
    80006974:	06300513          	li	a0,99
    80006978:	02d7f5bb          	remuw	a1,a5,a3
    8000697c:	02059593          	slli	a1,a1,0x20
    80006980:	0205d593          	srli	a1,a1,0x20
    80006984:	00bd85b3          	add	a1,s11,a1
    80006988:	0005c583          	lbu	a1,0(a1)
    8000698c:	02d7d7bb          	divuw	a5,a5,a3
    80006990:	f8b401a3          	sb	a1,-125(s0)
    80006994:	48e57263          	bgeu	a0,a4,80006e18 <__printf+0x620>
    80006998:	3e700513          	li	a0,999
    8000699c:	02d7f5bb          	remuw	a1,a5,a3
    800069a0:	02059593          	slli	a1,a1,0x20
    800069a4:	0205d593          	srli	a1,a1,0x20
    800069a8:	00bd85b3          	add	a1,s11,a1
    800069ac:	0005c583          	lbu	a1,0(a1)
    800069b0:	02d7d7bb          	divuw	a5,a5,a3
    800069b4:	f8b40223          	sb	a1,-124(s0)
    800069b8:	46e57663          	bgeu	a0,a4,80006e24 <__printf+0x62c>
    800069bc:	02d7f5bb          	remuw	a1,a5,a3
    800069c0:	02059593          	slli	a1,a1,0x20
    800069c4:	0205d593          	srli	a1,a1,0x20
    800069c8:	00bd85b3          	add	a1,s11,a1
    800069cc:	0005c583          	lbu	a1,0(a1)
    800069d0:	02d7d7bb          	divuw	a5,a5,a3
    800069d4:	f8b402a3          	sb	a1,-123(s0)
    800069d8:	46ea7863          	bgeu	s4,a4,80006e48 <__printf+0x650>
    800069dc:	02d7f5bb          	remuw	a1,a5,a3
    800069e0:	02059593          	slli	a1,a1,0x20
    800069e4:	0205d593          	srli	a1,a1,0x20
    800069e8:	00bd85b3          	add	a1,s11,a1
    800069ec:	0005c583          	lbu	a1,0(a1)
    800069f0:	02d7d7bb          	divuw	a5,a5,a3
    800069f4:	f8b40323          	sb	a1,-122(s0)
    800069f8:	3eeaf863          	bgeu	s5,a4,80006de8 <__printf+0x5f0>
    800069fc:	02d7f5bb          	remuw	a1,a5,a3
    80006a00:	02059593          	slli	a1,a1,0x20
    80006a04:	0205d593          	srli	a1,a1,0x20
    80006a08:	00bd85b3          	add	a1,s11,a1
    80006a0c:	0005c583          	lbu	a1,0(a1)
    80006a10:	02d7d7bb          	divuw	a5,a5,a3
    80006a14:	f8b403a3          	sb	a1,-121(s0)
    80006a18:	42eb7e63          	bgeu	s6,a4,80006e54 <__printf+0x65c>
    80006a1c:	02d7f5bb          	remuw	a1,a5,a3
    80006a20:	02059593          	slli	a1,a1,0x20
    80006a24:	0205d593          	srli	a1,a1,0x20
    80006a28:	00bd85b3          	add	a1,s11,a1
    80006a2c:	0005c583          	lbu	a1,0(a1)
    80006a30:	02d7d7bb          	divuw	a5,a5,a3
    80006a34:	f8b40423          	sb	a1,-120(s0)
    80006a38:	42ebfc63          	bgeu	s7,a4,80006e70 <__printf+0x678>
    80006a3c:	02079793          	slli	a5,a5,0x20
    80006a40:	0207d793          	srli	a5,a5,0x20
    80006a44:	00fd8db3          	add	s11,s11,a5
    80006a48:	000dc703          	lbu	a4,0(s11)
    80006a4c:	00a00793          	li	a5,10
    80006a50:	00900c93          	li	s9,9
    80006a54:	f8e404a3          	sb	a4,-119(s0)
    80006a58:	00065c63          	bgez	a2,80006a70 <__printf+0x278>
    80006a5c:	f9040713          	addi	a4,s0,-112
    80006a60:	00f70733          	add	a4,a4,a5
    80006a64:	02d00693          	li	a3,45
    80006a68:	fed70823          	sb	a3,-16(a4)
    80006a6c:	00078c93          	mv	s9,a5
    80006a70:	f8040793          	addi	a5,s0,-128
    80006a74:	01978cb3          	add	s9,a5,s9
    80006a78:	f7f40d13          	addi	s10,s0,-129
    80006a7c:	000cc503          	lbu	a0,0(s9)
    80006a80:	fffc8c93          	addi	s9,s9,-1
    80006a84:	00000097          	auipc	ra,0x0
    80006a88:	b90080e7          	jalr	-1136(ra) # 80006614 <consputc>
    80006a8c:	ffac98e3          	bne	s9,s10,80006a7c <__printf+0x284>
    80006a90:	00094503          	lbu	a0,0(s2)
    80006a94:	e00514e3          	bnez	a0,8000689c <__printf+0xa4>
    80006a98:	1a0c1663          	bnez	s8,80006c44 <__printf+0x44c>
    80006a9c:	08813083          	ld	ra,136(sp)
    80006aa0:	08013403          	ld	s0,128(sp)
    80006aa4:	07813483          	ld	s1,120(sp)
    80006aa8:	07013903          	ld	s2,112(sp)
    80006aac:	06813983          	ld	s3,104(sp)
    80006ab0:	06013a03          	ld	s4,96(sp)
    80006ab4:	05813a83          	ld	s5,88(sp)
    80006ab8:	05013b03          	ld	s6,80(sp)
    80006abc:	04813b83          	ld	s7,72(sp)
    80006ac0:	04013c03          	ld	s8,64(sp)
    80006ac4:	03813c83          	ld	s9,56(sp)
    80006ac8:	03013d03          	ld	s10,48(sp)
    80006acc:	02813d83          	ld	s11,40(sp)
    80006ad0:	0d010113          	addi	sp,sp,208
    80006ad4:	00008067          	ret
    80006ad8:	07300713          	li	a4,115
    80006adc:	1ce78a63          	beq	a5,a4,80006cb0 <__printf+0x4b8>
    80006ae0:	07800713          	li	a4,120
    80006ae4:	1ee79e63          	bne	a5,a4,80006ce0 <__printf+0x4e8>
    80006ae8:	f7843783          	ld	a5,-136(s0)
    80006aec:	0007a703          	lw	a4,0(a5)
    80006af0:	00878793          	addi	a5,a5,8
    80006af4:	f6f43c23          	sd	a5,-136(s0)
    80006af8:	28074263          	bltz	a4,80006d7c <__printf+0x584>
    80006afc:	00002d97          	auipc	s11,0x2
    80006b00:	c04d8d93          	addi	s11,s11,-1020 # 80008700 <digits>
    80006b04:	00f77793          	andi	a5,a4,15
    80006b08:	00fd87b3          	add	a5,s11,a5
    80006b0c:	0007c683          	lbu	a3,0(a5)
    80006b10:	00f00613          	li	a2,15
    80006b14:	0007079b          	sext.w	a5,a4
    80006b18:	f8d40023          	sb	a3,-128(s0)
    80006b1c:	0047559b          	srliw	a1,a4,0x4
    80006b20:	0047569b          	srliw	a3,a4,0x4
    80006b24:	00000c93          	li	s9,0
    80006b28:	0ee65063          	bge	a2,a4,80006c08 <__printf+0x410>
    80006b2c:	00f6f693          	andi	a3,a3,15
    80006b30:	00dd86b3          	add	a3,s11,a3
    80006b34:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006b38:	0087d79b          	srliw	a5,a5,0x8
    80006b3c:	00100c93          	li	s9,1
    80006b40:	f8d400a3          	sb	a3,-127(s0)
    80006b44:	0cb67263          	bgeu	a2,a1,80006c08 <__printf+0x410>
    80006b48:	00f7f693          	andi	a3,a5,15
    80006b4c:	00dd86b3          	add	a3,s11,a3
    80006b50:	0006c583          	lbu	a1,0(a3)
    80006b54:	00f00613          	li	a2,15
    80006b58:	0047d69b          	srliw	a3,a5,0x4
    80006b5c:	f8b40123          	sb	a1,-126(s0)
    80006b60:	0047d593          	srli	a1,a5,0x4
    80006b64:	28f67e63          	bgeu	a2,a5,80006e00 <__printf+0x608>
    80006b68:	00f6f693          	andi	a3,a3,15
    80006b6c:	00dd86b3          	add	a3,s11,a3
    80006b70:	0006c503          	lbu	a0,0(a3)
    80006b74:	0087d813          	srli	a6,a5,0x8
    80006b78:	0087d69b          	srliw	a3,a5,0x8
    80006b7c:	f8a401a3          	sb	a0,-125(s0)
    80006b80:	28b67663          	bgeu	a2,a1,80006e0c <__printf+0x614>
    80006b84:	00f6f693          	andi	a3,a3,15
    80006b88:	00dd86b3          	add	a3,s11,a3
    80006b8c:	0006c583          	lbu	a1,0(a3)
    80006b90:	00c7d513          	srli	a0,a5,0xc
    80006b94:	00c7d69b          	srliw	a3,a5,0xc
    80006b98:	f8b40223          	sb	a1,-124(s0)
    80006b9c:	29067a63          	bgeu	a2,a6,80006e30 <__printf+0x638>
    80006ba0:	00f6f693          	andi	a3,a3,15
    80006ba4:	00dd86b3          	add	a3,s11,a3
    80006ba8:	0006c583          	lbu	a1,0(a3)
    80006bac:	0107d813          	srli	a6,a5,0x10
    80006bb0:	0107d69b          	srliw	a3,a5,0x10
    80006bb4:	f8b402a3          	sb	a1,-123(s0)
    80006bb8:	28a67263          	bgeu	a2,a0,80006e3c <__printf+0x644>
    80006bbc:	00f6f693          	andi	a3,a3,15
    80006bc0:	00dd86b3          	add	a3,s11,a3
    80006bc4:	0006c683          	lbu	a3,0(a3)
    80006bc8:	0147d79b          	srliw	a5,a5,0x14
    80006bcc:	f8d40323          	sb	a3,-122(s0)
    80006bd0:	21067663          	bgeu	a2,a6,80006ddc <__printf+0x5e4>
    80006bd4:	02079793          	slli	a5,a5,0x20
    80006bd8:	0207d793          	srli	a5,a5,0x20
    80006bdc:	00fd8db3          	add	s11,s11,a5
    80006be0:	000dc683          	lbu	a3,0(s11)
    80006be4:	00800793          	li	a5,8
    80006be8:	00700c93          	li	s9,7
    80006bec:	f8d403a3          	sb	a3,-121(s0)
    80006bf0:	00075c63          	bgez	a4,80006c08 <__printf+0x410>
    80006bf4:	f9040713          	addi	a4,s0,-112
    80006bf8:	00f70733          	add	a4,a4,a5
    80006bfc:	02d00693          	li	a3,45
    80006c00:	fed70823          	sb	a3,-16(a4)
    80006c04:	00078c93          	mv	s9,a5
    80006c08:	f8040793          	addi	a5,s0,-128
    80006c0c:	01978cb3          	add	s9,a5,s9
    80006c10:	f7f40d13          	addi	s10,s0,-129
    80006c14:	000cc503          	lbu	a0,0(s9)
    80006c18:	fffc8c93          	addi	s9,s9,-1
    80006c1c:	00000097          	auipc	ra,0x0
    80006c20:	9f8080e7          	jalr	-1544(ra) # 80006614 <consputc>
    80006c24:	ff9d18e3          	bne	s10,s9,80006c14 <__printf+0x41c>
    80006c28:	0100006f          	j	80006c38 <__printf+0x440>
    80006c2c:	00000097          	auipc	ra,0x0
    80006c30:	9e8080e7          	jalr	-1560(ra) # 80006614 <consputc>
    80006c34:	000c8493          	mv	s1,s9
    80006c38:	00094503          	lbu	a0,0(s2)
    80006c3c:	c60510e3          	bnez	a0,8000689c <__printf+0xa4>
    80006c40:	e40c0ee3          	beqz	s8,80006a9c <__printf+0x2a4>
    80006c44:	00005517          	auipc	a0,0x5
    80006c48:	a6c50513          	addi	a0,a0,-1428 # 8000b6b0 <pr>
    80006c4c:	00001097          	auipc	ra,0x1
    80006c50:	94c080e7          	jalr	-1716(ra) # 80007598 <release>
    80006c54:	e49ff06f          	j	80006a9c <__printf+0x2a4>
    80006c58:	f7843783          	ld	a5,-136(s0)
    80006c5c:	03000513          	li	a0,48
    80006c60:	01000d13          	li	s10,16
    80006c64:	00878713          	addi	a4,a5,8
    80006c68:	0007bc83          	ld	s9,0(a5)
    80006c6c:	f6e43c23          	sd	a4,-136(s0)
    80006c70:	00000097          	auipc	ra,0x0
    80006c74:	9a4080e7          	jalr	-1628(ra) # 80006614 <consputc>
    80006c78:	07800513          	li	a0,120
    80006c7c:	00000097          	auipc	ra,0x0
    80006c80:	998080e7          	jalr	-1640(ra) # 80006614 <consputc>
    80006c84:	00002d97          	auipc	s11,0x2
    80006c88:	a7cd8d93          	addi	s11,s11,-1412 # 80008700 <digits>
    80006c8c:	03ccd793          	srli	a5,s9,0x3c
    80006c90:	00fd87b3          	add	a5,s11,a5
    80006c94:	0007c503          	lbu	a0,0(a5)
    80006c98:	fffd0d1b          	addiw	s10,s10,-1
    80006c9c:	004c9c93          	slli	s9,s9,0x4
    80006ca0:	00000097          	auipc	ra,0x0
    80006ca4:	974080e7          	jalr	-1676(ra) # 80006614 <consputc>
    80006ca8:	fe0d12e3          	bnez	s10,80006c8c <__printf+0x494>
    80006cac:	f8dff06f          	j	80006c38 <__printf+0x440>
    80006cb0:	f7843783          	ld	a5,-136(s0)
    80006cb4:	0007bc83          	ld	s9,0(a5)
    80006cb8:	00878793          	addi	a5,a5,8
    80006cbc:	f6f43c23          	sd	a5,-136(s0)
    80006cc0:	000c9a63          	bnez	s9,80006cd4 <__printf+0x4dc>
    80006cc4:	1080006f          	j	80006dcc <__printf+0x5d4>
    80006cc8:	001c8c93          	addi	s9,s9,1
    80006ccc:	00000097          	auipc	ra,0x0
    80006cd0:	948080e7          	jalr	-1720(ra) # 80006614 <consputc>
    80006cd4:	000cc503          	lbu	a0,0(s9)
    80006cd8:	fe0518e3          	bnez	a0,80006cc8 <__printf+0x4d0>
    80006cdc:	f5dff06f          	j	80006c38 <__printf+0x440>
    80006ce0:	02500513          	li	a0,37
    80006ce4:	00000097          	auipc	ra,0x0
    80006ce8:	930080e7          	jalr	-1744(ra) # 80006614 <consputc>
    80006cec:	000c8513          	mv	a0,s9
    80006cf0:	00000097          	auipc	ra,0x0
    80006cf4:	924080e7          	jalr	-1756(ra) # 80006614 <consputc>
    80006cf8:	f41ff06f          	j	80006c38 <__printf+0x440>
    80006cfc:	02500513          	li	a0,37
    80006d00:	00000097          	auipc	ra,0x0
    80006d04:	914080e7          	jalr	-1772(ra) # 80006614 <consputc>
    80006d08:	f31ff06f          	j	80006c38 <__printf+0x440>
    80006d0c:	00030513          	mv	a0,t1
    80006d10:	00000097          	auipc	ra,0x0
    80006d14:	7bc080e7          	jalr	1980(ra) # 800074cc <acquire>
    80006d18:	b4dff06f          	j	80006864 <__printf+0x6c>
    80006d1c:	40c0053b          	negw	a0,a2
    80006d20:	00a00713          	li	a4,10
    80006d24:	02e576bb          	remuw	a3,a0,a4
    80006d28:	00002d97          	auipc	s11,0x2
    80006d2c:	9d8d8d93          	addi	s11,s11,-1576 # 80008700 <digits>
    80006d30:	ff700593          	li	a1,-9
    80006d34:	02069693          	slli	a3,a3,0x20
    80006d38:	0206d693          	srli	a3,a3,0x20
    80006d3c:	00dd86b3          	add	a3,s11,a3
    80006d40:	0006c683          	lbu	a3,0(a3)
    80006d44:	02e557bb          	divuw	a5,a0,a4
    80006d48:	f8d40023          	sb	a3,-128(s0)
    80006d4c:	10b65e63          	bge	a2,a1,80006e68 <__printf+0x670>
    80006d50:	06300593          	li	a1,99
    80006d54:	02e7f6bb          	remuw	a3,a5,a4
    80006d58:	02069693          	slli	a3,a3,0x20
    80006d5c:	0206d693          	srli	a3,a3,0x20
    80006d60:	00dd86b3          	add	a3,s11,a3
    80006d64:	0006c683          	lbu	a3,0(a3)
    80006d68:	02e7d73b          	divuw	a4,a5,a4
    80006d6c:	00200793          	li	a5,2
    80006d70:	f8d400a3          	sb	a3,-127(s0)
    80006d74:	bca5ece3          	bltu	a1,a0,8000694c <__printf+0x154>
    80006d78:	ce5ff06f          	j	80006a5c <__printf+0x264>
    80006d7c:	40e007bb          	negw	a5,a4
    80006d80:	00002d97          	auipc	s11,0x2
    80006d84:	980d8d93          	addi	s11,s11,-1664 # 80008700 <digits>
    80006d88:	00f7f693          	andi	a3,a5,15
    80006d8c:	00dd86b3          	add	a3,s11,a3
    80006d90:	0006c583          	lbu	a1,0(a3)
    80006d94:	ff100613          	li	a2,-15
    80006d98:	0047d69b          	srliw	a3,a5,0x4
    80006d9c:	f8b40023          	sb	a1,-128(s0)
    80006da0:	0047d59b          	srliw	a1,a5,0x4
    80006da4:	0ac75e63          	bge	a4,a2,80006e60 <__printf+0x668>
    80006da8:	00f6f693          	andi	a3,a3,15
    80006dac:	00dd86b3          	add	a3,s11,a3
    80006db0:	0006c603          	lbu	a2,0(a3)
    80006db4:	00f00693          	li	a3,15
    80006db8:	0087d79b          	srliw	a5,a5,0x8
    80006dbc:	f8c400a3          	sb	a2,-127(s0)
    80006dc0:	d8b6e4e3          	bltu	a3,a1,80006b48 <__printf+0x350>
    80006dc4:	00200793          	li	a5,2
    80006dc8:	e2dff06f          	j	80006bf4 <__printf+0x3fc>
    80006dcc:	00002c97          	auipc	s9,0x2
    80006dd0:	914c8c93          	addi	s9,s9,-1772 # 800086e0 <CONSOLE_STATUS+0x6d0>
    80006dd4:	02800513          	li	a0,40
    80006dd8:	ef1ff06f          	j	80006cc8 <__printf+0x4d0>
    80006ddc:	00700793          	li	a5,7
    80006de0:	00600c93          	li	s9,6
    80006de4:	e0dff06f          	j	80006bf0 <__printf+0x3f8>
    80006de8:	00700793          	li	a5,7
    80006dec:	00600c93          	li	s9,6
    80006df0:	c69ff06f          	j	80006a58 <__printf+0x260>
    80006df4:	00300793          	li	a5,3
    80006df8:	00200c93          	li	s9,2
    80006dfc:	c5dff06f          	j	80006a58 <__printf+0x260>
    80006e00:	00300793          	li	a5,3
    80006e04:	00200c93          	li	s9,2
    80006e08:	de9ff06f          	j	80006bf0 <__printf+0x3f8>
    80006e0c:	00400793          	li	a5,4
    80006e10:	00300c93          	li	s9,3
    80006e14:	dddff06f          	j	80006bf0 <__printf+0x3f8>
    80006e18:	00400793          	li	a5,4
    80006e1c:	00300c93          	li	s9,3
    80006e20:	c39ff06f          	j	80006a58 <__printf+0x260>
    80006e24:	00500793          	li	a5,5
    80006e28:	00400c93          	li	s9,4
    80006e2c:	c2dff06f          	j	80006a58 <__printf+0x260>
    80006e30:	00500793          	li	a5,5
    80006e34:	00400c93          	li	s9,4
    80006e38:	db9ff06f          	j	80006bf0 <__printf+0x3f8>
    80006e3c:	00600793          	li	a5,6
    80006e40:	00500c93          	li	s9,5
    80006e44:	dadff06f          	j	80006bf0 <__printf+0x3f8>
    80006e48:	00600793          	li	a5,6
    80006e4c:	00500c93          	li	s9,5
    80006e50:	c09ff06f          	j	80006a58 <__printf+0x260>
    80006e54:	00800793          	li	a5,8
    80006e58:	00700c93          	li	s9,7
    80006e5c:	bfdff06f          	j	80006a58 <__printf+0x260>
    80006e60:	00100793          	li	a5,1
    80006e64:	d91ff06f          	j	80006bf4 <__printf+0x3fc>
    80006e68:	00100793          	li	a5,1
    80006e6c:	bf1ff06f          	j	80006a5c <__printf+0x264>
    80006e70:	00900793          	li	a5,9
    80006e74:	00800c93          	li	s9,8
    80006e78:	be1ff06f          	j	80006a58 <__printf+0x260>
    80006e7c:	00002517          	auipc	a0,0x2
    80006e80:	86c50513          	addi	a0,a0,-1940 # 800086e8 <CONSOLE_STATUS+0x6d8>
    80006e84:	00000097          	auipc	ra,0x0
    80006e88:	918080e7          	jalr	-1768(ra) # 8000679c <panic>

0000000080006e8c <printfinit>:
    80006e8c:	fe010113          	addi	sp,sp,-32
    80006e90:	00813823          	sd	s0,16(sp)
    80006e94:	00913423          	sd	s1,8(sp)
    80006e98:	00113c23          	sd	ra,24(sp)
    80006e9c:	02010413          	addi	s0,sp,32
    80006ea0:	00005497          	auipc	s1,0x5
    80006ea4:	81048493          	addi	s1,s1,-2032 # 8000b6b0 <pr>
    80006ea8:	00048513          	mv	a0,s1
    80006eac:	00002597          	auipc	a1,0x2
    80006eb0:	84c58593          	addi	a1,a1,-1972 # 800086f8 <CONSOLE_STATUS+0x6e8>
    80006eb4:	00000097          	auipc	ra,0x0
    80006eb8:	5f4080e7          	jalr	1524(ra) # 800074a8 <initlock>
    80006ebc:	01813083          	ld	ra,24(sp)
    80006ec0:	01013403          	ld	s0,16(sp)
    80006ec4:	0004ac23          	sw	zero,24(s1)
    80006ec8:	00813483          	ld	s1,8(sp)
    80006ecc:	02010113          	addi	sp,sp,32
    80006ed0:	00008067          	ret

0000000080006ed4 <uartinit>:
    80006ed4:	ff010113          	addi	sp,sp,-16
    80006ed8:	00813423          	sd	s0,8(sp)
    80006edc:	01010413          	addi	s0,sp,16
    80006ee0:	100007b7          	lui	a5,0x10000
    80006ee4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006ee8:	f8000713          	li	a4,-128
    80006eec:	00e781a3          	sb	a4,3(a5)
    80006ef0:	00300713          	li	a4,3
    80006ef4:	00e78023          	sb	a4,0(a5)
    80006ef8:	000780a3          	sb	zero,1(a5)
    80006efc:	00e781a3          	sb	a4,3(a5)
    80006f00:	00700693          	li	a3,7
    80006f04:	00d78123          	sb	a3,2(a5)
    80006f08:	00e780a3          	sb	a4,1(a5)
    80006f0c:	00813403          	ld	s0,8(sp)
    80006f10:	01010113          	addi	sp,sp,16
    80006f14:	00008067          	ret

0000000080006f18 <uartputc>:
    80006f18:	00003797          	auipc	a5,0x3
    80006f1c:	4e07a783          	lw	a5,1248(a5) # 8000a3f8 <panicked>
    80006f20:	00078463          	beqz	a5,80006f28 <uartputc+0x10>
    80006f24:	0000006f          	j	80006f24 <uartputc+0xc>
    80006f28:	fd010113          	addi	sp,sp,-48
    80006f2c:	02813023          	sd	s0,32(sp)
    80006f30:	00913c23          	sd	s1,24(sp)
    80006f34:	01213823          	sd	s2,16(sp)
    80006f38:	01313423          	sd	s3,8(sp)
    80006f3c:	02113423          	sd	ra,40(sp)
    80006f40:	03010413          	addi	s0,sp,48
    80006f44:	00003917          	auipc	s2,0x3
    80006f48:	4bc90913          	addi	s2,s2,1212 # 8000a400 <uart_tx_r>
    80006f4c:	00093783          	ld	a5,0(s2)
    80006f50:	00003497          	auipc	s1,0x3
    80006f54:	4b848493          	addi	s1,s1,1208 # 8000a408 <uart_tx_w>
    80006f58:	0004b703          	ld	a4,0(s1)
    80006f5c:	02078693          	addi	a3,a5,32
    80006f60:	00050993          	mv	s3,a0
    80006f64:	02e69c63          	bne	a3,a4,80006f9c <uartputc+0x84>
    80006f68:	00001097          	auipc	ra,0x1
    80006f6c:	834080e7          	jalr	-1996(ra) # 8000779c <push_on>
    80006f70:	00093783          	ld	a5,0(s2)
    80006f74:	0004b703          	ld	a4,0(s1)
    80006f78:	02078793          	addi	a5,a5,32
    80006f7c:	00e79463          	bne	a5,a4,80006f84 <uartputc+0x6c>
    80006f80:	0000006f          	j	80006f80 <uartputc+0x68>
    80006f84:	00001097          	auipc	ra,0x1
    80006f88:	88c080e7          	jalr	-1908(ra) # 80007810 <pop_on>
    80006f8c:	00093783          	ld	a5,0(s2)
    80006f90:	0004b703          	ld	a4,0(s1)
    80006f94:	02078693          	addi	a3,a5,32
    80006f98:	fce688e3          	beq	a3,a4,80006f68 <uartputc+0x50>
    80006f9c:	01f77693          	andi	a3,a4,31
    80006fa0:	00004597          	auipc	a1,0x4
    80006fa4:	73058593          	addi	a1,a1,1840 # 8000b6d0 <uart_tx_buf>
    80006fa8:	00d586b3          	add	a3,a1,a3
    80006fac:	00170713          	addi	a4,a4,1
    80006fb0:	01368023          	sb	s3,0(a3)
    80006fb4:	00e4b023          	sd	a4,0(s1)
    80006fb8:	10000637          	lui	a2,0x10000
    80006fbc:	02f71063          	bne	a4,a5,80006fdc <uartputc+0xc4>
    80006fc0:	0340006f          	j	80006ff4 <uartputc+0xdc>
    80006fc4:	00074703          	lbu	a4,0(a4)
    80006fc8:	00f93023          	sd	a5,0(s2)
    80006fcc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006fd0:	00093783          	ld	a5,0(s2)
    80006fd4:	0004b703          	ld	a4,0(s1)
    80006fd8:	00f70e63          	beq	a4,a5,80006ff4 <uartputc+0xdc>
    80006fdc:	00564683          	lbu	a3,5(a2)
    80006fe0:	01f7f713          	andi	a4,a5,31
    80006fe4:	00e58733          	add	a4,a1,a4
    80006fe8:	0206f693          	andi	a3,a3,32
    80006fec:	00178793          	addi	a5,a5,1
    80006ff0:	fc069ae3          	bnez	a3,80006fc4 <uartputc+0xac>
    80006ff4:	02813083          	ld	ra,40(sp)
    80006ff8:	02013403          	ld	s0,32(sp)
    80006ffc:	01813483          	ld	s1,24(sp)
    80007000:	01013903          	ld	s2,16(sp)
    80007004:	00813983          	ld	s3,8(sp)
    80007008:	03010113          	addi	sp,sp,48
    8000700c:	00008067          	ret

0000000080007010 <uartputc_sync>:
    80007010:	ff010113          	addi	sp,sp,-16
    80007014:	00813423          	sd	s0,8(sp)
    80007018:	01010413          	addi	s0,sp,16
    8000701c:	00003717          	auipc	a4,0x3
    80007020:	3dc72703          	lw	a4,988(a4) # 8000a3f8 <panicked>
    80007024:	02071663          	bnez	a4,80007050 <uartputc_sync+0x40>
    80007028:	00050793          	mv	a5,a0
    8000702c:	100006b7          	lui	a3,0x10000
    80007030:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007034:	02077713          	andi	a4,a4,32
    80007038:	fe070ce3          	beqz	a4,80007030 <uartputc_sync+0x20>
    8000703c:	0ff7f793          	andi	a5,a5,255
    80007040:	00f68023          	sb	a5,0(a3)
    80007044:	00813403          	ld	s0,8(sp)
    80007048:	01010113          	addi	sp,sp,16
    8000704c:	00008067          	ret
    80007050:	0000006f          	j	80007050 <uartputc_sync+0x40>

0000000080007054 <uartstart>:
    80007054:	ff010113          	addi	sp,sp,-16
    80007058:	00813423          	sd	s0,8(sp)
    8000705c:	01010413          	addi	s0,sp,16
    80007060:	00003617          	auipc	a2,0x3
    80007064:	3a060613          	addi	a2,a2,928 # 8000a400 <uart_tx_r>
    80007068:	00003517          	auipc	a0,0x3
    8000706c:	3a050513          	addi	a0,a0,928 # 8000a408 <uart_tx_w>
    80007070:	00063783          	ld	a5,0(a2)
    80007074:	00053703          	ld	a4,0(a0)
    80007078:	04f70263          	beq	a4,a5,800070bc <uartstart+0x68>
    8000707c:	100005b7          	lui	a1,0x10000
    80007080:	00004817          	auipc	a6,0x4
    80007084:	65080813          	addi	a6,a6,1616 # 8000b6d0 <uart_tx_buf>
    80007088:	01c0006f          	j	800070a4 <uartstart+0x50>
    8000708c:	0006c703          	lbu	a4,0(a3)
    80007090:	00f63023          	sd	a5,0(a2)
    80007094:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007098:	00063783          	ld	a5,0(a2)
    8000709c:	00053703          	ld	a4,0(a0)
    800070a0:	00f70e63          	beq	a4,a5,800070bc <uartstart+0x68>
    800070a4:	01f7f713          	andi	a4,a5,31
    800070a8:	00e806b3          	add	a3,a6,a4
    800070ac:	0055c703          	lbu	a4,5(a1)
    800070b0:	00178793          	addi	a5,a5,1
    800070b4:	02077713          	andi	a4,a4,32
    800070b8:	fc071ae3          	bnez	a4,8000708c <uartstart+0x38>
    800070bc:	00813403          	ld	s0,8(sp)
    800070c0:	01010113          	addi	sp,sp,16
    800070c4:	00008067          	ret

00000000800070c8 <uartgetc>:
    800070c8:	ff010113          	addi	sp,sp,-16
    800070cc:	00813423          	sd	s0,8(sp)
    800070d0:	01010413          	addi	s0,sp,16
    800070d4:	10000737          	lui	a4,0x10000
    800070d8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800070dc:	0017f793          	andi	a5,a5,1
    800070e0:	00078c63          	beqz	a5,800070f8 <uartgetc+0x30>
    800070e4:	00074503          	lbu	a0,0(a4)
    800070e8:	0ff57513          	andi	a0,a0,255
    800070ec:	00813403          	ld	s0,8(sp)
    800070f0:	01010113          	addi	sp,sp,16
    800070f4:	00008067          	ret
    800070f8:	fff00513          	li	a0,-1
    800070fc:	ff1ff06f          	j	800070ec <uartgetc+0x24>

0000000080007100 <uartintr>:
    80007100:	100007b7          	lui	a5,0x10000
    80007104:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007108:	0017f793          	andi	a5,a5,1
    8000710c:	0a078463          	beqz	a5,800071b4 <uartintr+0xb4>
    80007110:	fe010113          	addi	sp,sp,-32
    80007114:	00813823          	sd	s0,16(sp)
    80007118:	00913423          	sd	s1,8(sp)
    8000711c:	00113c23          	sd	ra,24(sp)
    80007120:	02010413          	addi	s0,sp,32
    80007124:	100004b7          	lui	s1,0x10000
    80007128:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000712c:	0ff57513          	andi	a0,a0,255
    80007130:	fffff097          	auipc	ra,0xfffff
    80007134:	534080e7          	jalr	1332(ra) # 80006664 <consoleintr>
    80007138:	0054c783          	lbu	a5,5(s1)
    8000713c:	0017f793          	andi	a5,a5,1
    80007140:	fe0794e3          	bnez	a5,80007128 <uartintr+0x28>
    80007144:	00003617          	auipc	a2,0x3
    80007148:	2bc60613          	addi	a2,a2,700 # 8000a400 <uart_tx_r>
    8000714c:	00003517          	auipc	a0,0x3
    80007150:	2bc50513          	addi	a0,a0,700 # 8000a408 <uart_tx_w>
    80007154:	00063783          	ld	a5,0(a2)
    80007158:	00053703          	ld	a4,0(a0)
    8000715c:	04f70263          	beq	a4,a5,800071a0 <uartintr+0xa0>
    80007160:	100005b7          	lui	a1,0x10000
    80007164:	00004817          	auipc	a6,0x4
    80007168:	56c80813          	addi	a6,a6,1388 # 8000b6d0 <uart_tx_buf>
    8000716c:	01c0006f          	j	80007188 <uartintr+0x88>
    80007170:	0006c703          	lbu	a4,0(a3)
    80007174:	00f63023          	sd	a5,0(a2)
    80007178:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000717c:	00063783          	ld	a5,0(a2)
    80007180:	00053703          	ld	a4,0(a0)
    80007184:	00f70e63          	beq	a4,a5,800071a0 <uartintr+0xa0>
    80007188:	01f7f713          	andi	a4,a5,31
    8000718c:	00e806b3          	add	a3,a6,a4
    80007190:	0055c703          	lbu	a4,5(a1)
    80007194:	00178793          	addi	a5,a5,1
    80007198:	02077713          	andi	a4,a4,32
    8000719c:	fc071ae3          	bnez	a4,80007170 <uartintr+0x70>
    800071a0:	01813083          	ld	ra,24(sp)
    800071a4:	01013403          	ld	s0,16(sp)
    800071a8:	00813483          	ld	s1,8(sp)
    800071ac:	02010113          	addi	sp,sp,32
    800071b0:	00008067          	ret
    800071b4:	00003617          	auipc	a2,0x3
    800071b8:	24c60613          	addi	a2,a2,588 # 8000a400 <uart_tx_r>
    800071bc:	00003517          	auipc	a0,0x3
    800071c0:	24c50513          	addi	a0,a0,588 # 8000a408 <uart_tx_w>
    800071c4:	00063783          	ld	a5,0(a2)
    800071c8:	00053703          	ld	a4,0(a0)
    800071cc:	04f70263          	beq	a4,a5,80007210 <uartintr+0x110>
    800071d0:	100005b7          	lui	a1,0x10000
    800071d4:	00004817          	auipc	a6,0x4
    800071d8:	4fc80813          	addi	a6,a6,1276 # 8000b6d0 <uart_tx_buf>
    800071dc:	01c0006f          	j	800071f8 <uartintr+0xf8>
    800071e0:	0006c703          	lbu	a4,0(a3)
    800071e4:	00f63023          	sd	a5,0(a2)
    800071e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800071ec:	00063783          	ld	a5,0(a2)
    800071f0:	00053703          	ld	a4,0(a0)
    800071f4:	02f70063          	beq	a4,a5,80007214 <uartintr+0x114>
    800071f8:	01f7f713          	andi	a4,a5,31
    800071fc:	00e806b3          	add	a3,a6,a4
    80007200:	0055c703          	lbu	a4,5(a1)
    80007204:	00178793          	addi	a5,a5,1
    80007208:	02077713          	andi	a4,a4,32
    8000720c:	fc071ae3          	bnez	a4,800071e0 <uartintr+0xe0>
    80007210:	00008067          	ret
    80007214:	00008067          	ret

0000000080007218 <kinit>:
    80007218:	fc010113          	addi	sp,sp,-64
    8000721c:	02913423          	sd	s1,40(sp)
    80007220:	fffff7b7          	lui	a5,0xfffff
    80007224:	00005497          	auipc	s1,0x5
    80007228:	4cb48493          	addi	s1,s1,1227 # 8000c6ef <end+0xfff>
    8000722c:	02813823          	sd	s0,48(sp)
    80007230:	01313c23          	sd	s3,24(sp)
    80007234:	00f4f4b3          	and	s1,s1,a5
    80007238:	02113c23          	sd	ra,56(sp)
    8000723c:	03213023          	sd	s2,32(sp)
    80007240:	01413823          	sd	s4,16(sp)
    80007244:	01513423          	sd	s5,8(sp)
    80007248:	04010413          	addi	s0,sp,64
    8000724c:	000017b7          	lui	a5,0x1
    80007250:	01100993          	li	s3,17
    80007254:	00f487b3          	add	a5,s1,a5
    80007258:	01b99993          	slli	s3,s3,0x1b
    8000725c:	06f9e063          	bltu	s3,a5,800072bc <kinit+0xa4>
    80007260:	00004a97          	auipc	s5,0x4
    80007264:	490a8a93          	addi	s5,s5,1168 # 8000b6f0 <end>
    80007268:	0754ec63          	bltu	s1,s5,800072e0 <kinit+0xc8>
    8000726c:	0734fa63          	bgeu	s1,s3,800072e0 <kinit+0xc8>
    80007270:	00088a37          	lui	s4,0x88
    80007274:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007278:	00003917          	auipc	s2,0x3
    8000727c:	19890913          	addi	s2,s2,408 # 8000a410 <kmem>
    80007280:	00ca1a13          	slli	s4,s4,0xc
    80007284:	0140006f          	j	80007298 <kinit+0x80>
    80007288:	000017b7          	lui	a5,0x1
    8000728c:	00f484b3          	add	s1,s1,a5
    80007290:	0554e863          	bltu	s1,s5,800072e0 <kinit+0xc8>
    80007294:	0534f663          	bgeu	s1,s3,800072e0 <kinit+0xc8>
    80007298:	00001637          	lui	a2,0x1
    8000729c:	00100593          	li	a1,1
    800072a0:	00048513          	mv	a0,s1
    800072a4:	00000097          	auipc	ra,0x0
    800072a8:	5e4080e7          	jalr	1508(ra) # 80007888 <__memset>
    800072ac:	00093783          	ld	a5,0(s2)
    800072b0:	00f4b023          	sd	a5,0(s1)
    800072b4:	00993023          	sd	s1,0(s2)
    800072b8:	fd4498e3          	bne	s1,s4,80007288 <kinit+0x70>
    800072bc:	03813083          	ld	ra,56(sp)
    800072c0:	03013403          	ld	s0,48(sp)
    800072c4:	02813483          	ld	s1,40(sp)
    800072c8:	02013903          	ld	s2,32(sp)
    800072cc:	01813983          	ld	s3,24(sp)
    800072d0:	01013a03          	ld	s4,16(sp)
    800072d4:	00813a83          	ld	s5,8(sp)
    800072d8:	04010113          	addi	sp,sp,64
    800072dc:	00008067          	ret
    800072e0:	00001517          	auipc	a0,0x1
    800072e4:	43850513          	addi	a0,a0,1080 # 80008718 <digits+0x18>
    800072e8:	fffff097          	auipc	ra,0xfffff
    800072ec:	4b4080e7          	jalr	1204(ra) # 8000679c <panic>

00000000800072f0 <freerange>:
    800072f0:	fc010113          	addi	sp,sp,-64
    800072f4:	000017b7          	lui	a5,0x1
    800072f8:	02913423          	sd	s1,40(sp)
    800072fc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007300:	009504b3          	add	s1,a0,s1
    80007304:	fffff537          	lui	a0,0xfffff
    80007308:	02813823          	sd	s0,48(sp)
    8000730c:	02113c23          	sd	ra,56(sp)
    80007310:	03213023          	sd	s2,32(sp)
    80007314:	01313c23          	sd	s3,24(sp)
    80007318:	01413823          	sd	s4,16(sp)
    8000731c:	01513423          	sd	s5,8(sp)
    80007320:	01613023          	sd	s6,0(sp)
    80007324:	04010413          	addi	s0,sp,64
    80007328:	00a4f4b3          	and	s1,s1,a0
    8000732c:	00f487b3          	add	a5,s1,a5
    80007330:	06f5e463          	bltu	a1,a5,80007398 <freerange+0xa8>
    80007334:	00004a97          	auipc	s5,0x4
    80007338:	3bca8a93          	addi	s5,s5,956 # 8000b6f0 <end>
    8000733c:	0954e263          	bltu	s1,s5,800073c0 <freerange+0xd0>
    80007340:	01100993          	li	s3,17
    80007344:	01b99993          	slli	s3,s3,0x1b
    80007348:	0734fc63          	bgeu	s1,s3,800073c0 <freerange+0xd0>
    8000734c:	00058a13          	mv	s4,a1
    80007350:	00003917          	auipc	s2,0x3
    80007354:	0c090913          	addi	s2,s2,192 # 8000a410 <kmem>
    80007358:	00002b37          	lui	s6,0x2
    8000735c:	0140006f          	j	80007370 <freerange+0x80>
    80007360:	000017b7          	lui	a5,0x1
    80007364:	00f484b3          	add	s1,s1,a5
    80007368:	0554ec63          	bltu	s1,s5,800073c0 <freerange+0xd0>
    8000736c:	0534fa63          	bgeu	s1,s3,800073c0 <freerange+0xd0>
    80007370:	00001637          	lui	a2,0x1
    80007374:	00100593          	li	a1,1
    80007378:	00048513          	mv	a0,s1
    8000737c:	00000097          	auipc	ra,0x0
    80007380:	50c080e7          	jalr	1292(ra) # 80007888 <__memset>
    80007384:	00093703          	ld	a4,0(s2)
    80007388:	016487b3          	add	a5,s1,s6
    8000738c:	00e4b023          	sd	a4,0(s1)
    80007390:	00993023          	sd	s1,0(s2)
    80007394:	fcfa76e3          	bgeu	s4,a5,80007360 <freerange+0x70>
    80007398:	03813083          	ld	ra,56(sp)
    8000739c:	03013403          	ld	s0,48(sp)
    800073a0:	02813483          	ld	s1,40(sp)
    800073a4:	02013903          	ld	s2,32(sp)
    800073a8:	01813983          	ld	s3,24(sp)
    800073ac:	01013a03          	ld	s4,16(sp)
    800073b0:	00813a83          	ld	s5,8(sp)
    800073b4:	00013b03          	ld	s6,0(sp)
    800073b8:	04010113          	addi	sp,sp,64
    800073bc:	00008067          	ret
    800073c0:	00001517          	auipc	a0,0x1
    800073c4:	35850513          	addi	a0,a0,856 # 80008718 <digits+0x18>
    800073c8:	fffff097          	auipc	ra,0xfffff
    800073cc:	3d4080e7          	jalr	980(ra) # 8000679c <panic>

00000000800073d0 <kfree>:
    800073d0:	fe010113          	addi	sp,sp,-32
    800073d4:	00813823          	sd	s0,16(sp)
    800073d8:	00113c23          	sd	ra,24(sp)
    800073dc:	00913423          	sd	s1,8(sp)
    800073e0:	02010413          	addi	s0,sp,32
    800073e4:	03451793          	slli	a5,a0,0x34
    800073e8:	04079c63          	bnez	a5,80007440 <kfree+0x70>
    800073ec:	00004797          	auipc	a5,0x4
    800073f0:	30478793          	addi	a5,a5,772 # 8000b6f0 <end>
    800073f4:	00050493          	mv	s1,a0
    800073f8:	04f56463          	bltu	a0,a5,80007440 <kfree+0x70>
    800073fc:	01100793          	li	a5,17
    80007400:	01b79793          	slli	a5,a5,0x1b
    80007404:	02f57e63          	bgeu	a0,a5,80007440 <kfree+0x70>
    80007408:	00001637          	lui	a2,0x1
    8000740c:	00100593          	li	a1,1
    80007410:	00000097          	auipc	ra,0x0
    80007414:	478080e7          	jalr	1144(ra) # 80007888 <__memset>
    80007418:	00003797          	auipc	a5,0x3
    8000741c:	ff878793          	addi	a5,a5,-8 # 8000a410 <kmem>
    80007420:	0007b703          	ld	a4,0(a5)
    80007424:	01813083          	ld	ra,24(sp)
    80007428:	01013403          	ld	s0,16(sp)
    8000742c:	00e4b023          	sd	a4,0(s1)
    80007430:	0097b023          	sd	s1,0(a5)
    80007434:	00813483          	ld	s1,8(sp)
    80007438:	02010113          	addi	sp,sp,32
    8000743c:	00008067          	ret
    80007440:	00001517          	auipc	a0,0x1
    80007444:	2d850513          	addi	a0,a0,728 # 80008718 <digits+0x18>
    80007448:	fffff097          	auipc	ra,0xfffff
    8000744c:	354080e7          	jalr	852(ra) # 8000679c <panic>

0000000080007450 <kalloc>:
    80007450:	fe010113          	addi	sp,sp,-32
    80007454:	00813823          	sd	s0,16(sp)
    80007458:	00913423          	sd	s1,8(sp)
    8000745c:	00113c23          	sd	ra,24(sp)
    80007460:	02010413          	addi	s0,sp,32
    80007464:	00003797          	auipc	a5,0x3
    80007468:	fac78793          	addi	a5,a5,-84 # 8000a410 <kmem>
    8000746c:	0007b483          	ld	s1,0(a5)
    80007470:	02048063          	beqz	s1,80007490 <kalloc+0x40>
    80007474:	0004b703          	ld	a4,0(s1)
    80007478:	00001637          	lui	a2,0x1
    8000747c:	00500593          	li	a1,5
    80007480:	00048513          	mv	a0,s1
    80007484:	00e7b023          	sd	a4,0(a5)
    80007488:	00000097          	auipc	ra,0x0
    8000748c:	400080e7          	jalr	1024(ra) # 80007888 <__memset>
    80007490:	01813083          	ld	ra,24(sp)
    80007494:	01013403          	ld	s0,16(sp)
    80007498:	00048513          	mv	a0,s1
    8000749c:	00813483          	ld	s1,8(sp)
    800074a0:	02010113          	addi	sp,sp,32
    800074a4:	00008067          	ret

00000000800074a8 <initlock>:
    800074a8:	ff010113          	addi	sp,sp,-16
    800074ac:	00813423          	sd	s0,8(sp)
    800074b0:	01010413          	addi	s0,sp,16
    800074b4:	00813403          	ld	s0,8(sp)
    800074b8:	00b53423          	sd	a1,8(a0)
    800074bc:	00052023          	sw	zero,0(a0)
    800074c0:	00053823          	sd	zero,16(a0)
    800074c4:	01010113          	addi	sp,sp,16
    800074c8:	00008067          	ret

00000000800074cc <acquire>:
    800074cc:	fe010113          	addi	sp,sp,-32
    800074d0:	00813823          	sd	s0,16(sp)
    800074d4:	00913423          	sd	s1,8(sp)
    800074d8:	00113c23          	sd	ra,24(sp)
    800074dc:	01213023          	sd	s2,0(sp)
    800074e0:	02010413          	addi	s0,sp,32
    800074e4:	00050493          	mv	s1,a0
    800074e8:	10002973          	csrr	s2,sstatus
    800074ec:	100027f3          	csrr	a5,sstatus
    800074f0:	ffd7f793          	andi	a5,a5,-3
    800074f4:	10079073          	csrw	sstatus,a5
    800074f8:	fffff097          	auipc	ra,0xfffff
    800074fc:	8e4080e7          	jalr	-1820(ra) # 80005ddc <mycpu>
    80007500:	07852783          	lw	a5,120(a0)
    80007504:	06078e63          	beqz	a5,80007580 <acquire+0xb4>
    80007508:	fffff097          	auipc	ra,0xfffff
    8000750c:	8d4080e7          	jalr	-1836(ra) # 80005ddc <mycpu>
    80007510:	07852783          	lw	a5,120(a0)
    80007514:	0004a703          	lw	a4,0(s1)
    80007518:	0017879b          	addiw	a5,a5,1
    8000751c:	06f52c23          	sw	a5,120(a0)
    80007520:	04071063          	bnez	a4,80007560 <acquire+0x94>
    80007524:	00100713          	li	a4,1
    80007528:	00070793          	mv	a5,a4
    8000752c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007530:	0007879b          	sext.w	a5,a5
    80007534:	fe079ae3          	bnez	a5,80007528 <acquire+0x5c>
    80007538:	0ff0000f          	fence
    8000753c:	fffff097          	auipc	ra,0xfffff
    80007540:	8a0080e7          	jalr	-1888(ra) # 80005ddc <mycpu>
    80007544:	01813083          	ld	ra,24(sp)
    80007548:	01013403          	ld	s0,16(sp)
    8000754c:	00a4b823          	sd	a0,16(s1)
    80007550:	00013903          	ld	s2,0(sp)
    80007554:	00813483          	ld	s1,8(sp)
    80007558:	02010113          	addi	sp,sp,32
    8000755c:	00008067          	ret
    80007560:	0104b903          	ld	s2,16(s1)
    80007564:	fffff097          	auipc	ra,0xfffff
    80007568:	878080e7          	jalr	-1928(ra) # 80005ddc <mycpu>
    8000756c:	faa91ce3          	bne	s2,a0,80007524 <acquire+0x58>
    80007570:	00001517          	auipc	a0,0x1
    80007574:	1b050513          	addi	a0,a0,432 # 80008720 <digits+0x20>
    80007578:	fffff097          	auipc	ra,0xfffff
    8000757c:	224080e7          	jalr	548(ra) # 8000679c <panic>
    80007580:	00195913          	srli	s2,s2,0x1
    80007584:	fffff097          	auipc	ra,0xfffff
    80007588:	858080e7          	jalr	-1960(ra) # 80005ddc <mycpu>
    8000758c:	00197913          	andi	s2,s2,1
    80007590:	07252e23          	sw	s2,124(a0)
    80007594:	f75ff06f          	j	80007508 <acquire+0x3c>

0000000080007598 <release>:
    80007598:	fe010113          	addi	sp,sp,-32
    8000759c:	00813823          	sd	s0,16(sp)
    800075a0:	00113c23          	sd	ra,24(sp)
    800075a4:	00913423          	sd	s1,8(sp)
    800075a8:	01213023          	sd	s2,0(sp)
    800075ac:	02010413          	addi	s0,sp,32
    800075b0:	00052783          	lw	a5,0(a0)
    800075b4:	00079a63          	bnez	a5,800075c8 <release+0x30>
    800075b8:	00001517          	auipc	a0,0x1
    800075bc:	17050513          	addi	a0,a0,368 # 80008728 <digits+0x28>
    800075c0:	fffff097          	auipc	ra,0xfffff
    800075c4:	1dc080e7          	jalr	476(ra) # 8000679c <panic>
    800075c8:	01053903          	ld	s2,16(a0)
    800075cc:	00050493          	mv	s1,a0
    800075d0:	fffff097          	auipc	ra,0xfffff
    800075d4:	80c080e7          	jalr	-2036(ra) # 80005ddc <mycpu>
    800075d8:	fea910e3          	bne	s2,a0,800075b8 <release+0x20>
    800075dc:	0004b823          	sd	zero,16(s1)
    800075e0:	0ff0000f          	fence
    800075e4:	0f50000f          	fence	iorw,ow
    800075e8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800075ec:	ffffe097          	auipc	ra,0xffffe
    800075f0:	7f0080e7          	jalr	2032(ra) # 80005ddc <mycpu>
    800075f4:	100027f3          	csrr	a5,sstatus
    800075f8:	0027f793          	andi	a5,a5,2
    800075fc:	04079a63          	bnez	a5,80007650 <release+0xb8>
    80007600:	07852783          	lw	a5,120(a0)
    80007604:	02f05e63          	blez	a5,80007640 <release+0xa8>
    80007608:	fff7871b          	addiw	a4,a5,-1
    8000760c:	06e52c23          	sw	a4,120(a0)
    80007610:	00071c63          	bnez	a4,80007628 <release+0x90>
    80007614:	07c52783          	lw	a5,124(a0)
    80007618:	00078863          	beqz	a5,80007628 <release+0x90>
    8000761c:	100027f3          	csrr	a5,sstatus
    80007620:	0027e793          	ori	a5,a5,2
    80007624:	10079073          	csrw	sstatus,a5
    80007628:	01813083          	ld	ra,24(sp)
    8000762c:	01013403          	ld	s0,16(sp)
    80007630:	00813483          	ld	s1,8(sp)
    80007634:	00013903          	ld	s2,0(sp)
    80007638:	02010113          	addi	sp,sp,32
    8000763c:	00008067          	ret
    80007640:	00001517          	auipc	a0,0x1
    80007644:	10850513          	addi	a0,a0,264 # 80008748 <digits+0x48>
    80007648:	fffff097          	auipc	ra,0xfffff
    8000764c:	154080e7          	jalr	340(ra) # 8000679c <panic>
    80007650:	00001517          	auipc	a0,0x1
    80007654:	0e050513          	addi	a0,a0,224 # 80008730 <digits+0x30>
    80007658:	fffff097          	auipc	ra,0xfffff
    8000765c:	144080e7          	jalr	324(ra) # 8000679c <panic>

0000000080007660 <holding>:
    80007660:	00052783          	lw	a5,0(a0)
    80007664:	00079663          	bnez	a5,80007670 <holding+0x10>
    80007668:	00000513          	li	a0,0
    8000766c:	00008067          	ret
    80007670:	fe010113          	addi	sp,sp,-32
    80007674:	00813823          	sd	s0,16(sp)
    80007678:	00913423          	sd	s1,8(sp)
    8000767c:	00113c23          	sd	ra,24(sp)
    80007680:	02010413          	addi	s0,sp,32
    80007684:	01053483          	ld	s1,16(a0)
    80007688:	ffffe097          	auipc	ra,0xffffe
    8000768c:	754080e7          	jalr	1876(ra) # 80005ddc <mycpu>
    80007690:	01813083          	ld	ra,24(sp)
    80007694:	01013403          	ld	s0,16(sp)
    80007698:	40a48533          	sub	a0,s1,a0
    8000769c:	00153513          	seqz	a0,a0
    800076a0:	00813483          	ld	s1,8(sp)
    800076a4:	02010113          	addi	sp,sp,32
    800076a8:	00008067          	ret

00000000800076ac <push_off>:
    800076ac:	fe010113          	addi	sp,sp,-32
    800076b0:	00813823          	sd	s0,16(sp)
    800076b4:	00113c23          	sd	ra,24(sp)
    800076b8:	00913423          	sd	s1,8(sp)
    800076bc:	02010413          	addi	s0,sp,32
    800076c0:	100024f3          	csrr	s1,sstatus
    800076c4:	100027f3          	csrr	a5,sstatus
    800076c8:	ffd7f793          	andi	a5,a5,-3
    800076cc:	10079073          	csrw	sstatus,a5
    800076d0:	ffffe097          	auipc	ra,0xffffe
    800076d4:	70c080e7          	jalr	1804(ra) # 80005ddc <mycpu>
    800076d8:	07852783          	lw	a5,120(a0)
    800076dc:	02078663          	beqz	a5,80007708 <push_off+0x5c>
    800076e0:	ffffe097          	auipc	ra,0xffffe
    800076e4:	6fc080e7          	jalr	1788(ra) # 80005ddc <mycpu>
    800076e8:	07852783          	lw	a5,120(a0)
    800076ec:	01813083          	ld	ra,24(sp)
    800076f0:	01013403          	ld	s0,16(sp)
    800076f4:	0017879b          	addiw	a5,a5,1
    800076f8:	06f52c23          	sw	a5,120(a0)
    800076fc:	00813483          	ld	s1,8(sp)
    80007700:	02010113          	addi	sp,sp,32
    80007704:	00008067          	ret
    80007708:	0014d493          	srli	s1,s1,0x1
    8000770c:	ffffe097          	auipc	ra,0xffffe
    80007710:	6d0080e7          	jalr	1744(ra) # 80005ddc <mycpu>
    80007714:	0014f493          	andi	s1,s1,1
    80007718:	06952e23          	sw	s1,124(a0)
    8000771c:	fc5ff06f          	j	800076e0 <push_off+0x34>

0000000080007720 <pop_off>:
    80007720:	ff010113          	addi	sp,sp,-16
    80007724:	00813023          	sd	s0,0(sp)
    80007728:	00113423          	sd	ra,8(sp)
    8000772c:	01010413          	addi	s0,sp,16
    80007730:	ffffe097          	auipc	ra,0xffffe
    80007734:	6ac080e7          	jalr	1708(ra) # 80005ddc <mycpu>
    80007738:	100027f3          	csrr	a5,sstatus
    8000773c:	0027f793          	andi	a5,a5,2
    80007740:	04079663          	bnez	a5,8000778c <pop_off+0x6c>
    80007744:	07852783          	lw	a5,120(a0)
    80007748:	02f05a63          	blez	a5,8000777c <pop_off+0x5c>
    8000774c:	fff7871b          	addiw	a4,a5,-1
    80007750:	06e52c23          	sw	a4,120(a0)
    80007754:	00071c63          	bnez	a4,8000776c <pop_off+0x4c>
    80007758:	07c52783          	lw	a5,124(a0)
    8000775c:	00078863          	beqz	a5,8000776c <pop_off+0x4c>
    80007760:	100027f3          	csrr	a5,sstatus
    80007764:	0027e793          	ori	a5,a5,2
    80007768:	10079073          	csrw	sstatus,a5
    8000776c:	00813083          	ld	ra,8(sp)
    80007770:	00013403          	ld	s0,0(sp)
    80007774:	01010113          	addi	sp,sp,16
    80007778:	00008067          	ret
    8000777c:	00001517          	auipc	a0,0x1
    80007780:	fcc50513          	addi	a0,a0,-52 # 80008748 <digits+0x48>
    80007784:	fffff097          	auipc	ra,0xfffff
    80007788:	018080e7          	jalr	24(ra) # 8000679c <panic>
    8000778c:	00001517          	auipc	a0,0x1
    80007790:	fa450513          	addi	a0,a0,-92 # 80008730 <digits+0x30>
    80007794:	fffff097          	auipc	ra,0xfffff
    80007798:	008080e7          	jalr	8(ra) # 8000679c <panic>

000000008000779c <push_on>:
    8000779c:	fe010113          	addi	sp,sp,-32
    800077a0:	00813823          	sd	s0,16(sp)
    800077a4:	00113c23          	sd	ra,24(sp)
    800077a8:	00913423          	sd	s1,8(sp)
    800077ac:	02010413          	addi	s0,sp,32
    800077b0:	100024f3          	csrr	s1,sstatus
    800077b4:	100027f3          	csrr	a5,sstatus
    800077b8:	0027e793          	ori	a5,a5,2
    800077bc:	10079073          	csrw	sstatus,a5
    800077c0:	ffffe097          	auipc	ra,0xffffe
    800077c4:	61c080e7          	jalr	1564(ra) # 80005ddc <mycpu>
    800077c8:	07852783          	lw	a5,120(a0)
    800077cc:	02078663          	beqz	a5,800077f8 <push_on+0x5c>
    800077d0:	ffffe097          	auipc	ra,0xffffe
    800077d4:	60c080e7          	jalr	1548(ra) # 80005ddc <mycpu>
    800077d8:	07852783          	lw	a5,120(a0)
    800077dc:	01813083          	ld	ra,24(sp)
    800077e0:	01013403          	ld	s0,16(sp)
    800077e4:	0017879b          	addiw	a5,a5,1
    800077e8:	06f52c23          	sw	a5,120(a0)
    800077ec:	00813483          	ld	s1,8(sp)
    800077f0:	02010113          	addi	sp,sp,32
    800077f4:	00008067          	ret
    800077f8:	0014d493          	srli	s1,s1,0x1
    800077fc:	ffffe097          	auipc	ra,0xffffe
    80007800:	5e0080e7          	jalr	1504(ra) # 80005ddc <mycpu>
    80007804:	0014f493          	andi	s1,s1,1
    80007808:	06952e23          	sw	s1,124(a0)
    8000780c:	fc5ff06f          	j	800077d0 <push_on+0x34>

0000000080007810 <pop_on>:
    80007810:	ff010113          	addi	sp,sp,-16
    80007814:	00813023          	sd	s0,0(sp)
    80007818:	00113423          	sd	ra,8(sp)
    8000781c:	01010413          	addi	s0,sp,16
    80007820:	ffffe097          	auipc	ra,0xffffe
    80007824:	5bc080e7          	jalr	1468(ra) # 80005ddc <mycpu>
    80007828:	100027f3          	csrr	a5,sstatus
    8000782c:	0027f793          	andi	a5,a5,2
    80007830:	04078463          	beqz	a5,80007878 <pop_on+0x68>
    80007834:	07852783          	lw	a5,120(a0)
    80007838:	02f05863          	blez	a5,80007868 <pop_on+0x58>
    8000783c:	fff7879b          	addiw	a5,a5,-1
    80007840:	06f52c23          	sw	a5,120(a0)
    80007844:	07853783          	ld	a5,120(a0)
    80007848:	00079863          	bnez	a5,80007858 <pop_on+0x48>
    8000784c:	100027f3          	csrr	a5,sstatus
    80007850:	ffd7f793          	andi	a5,a5,-3
    80007854:	10079073          	csrw	sstatus,a5
    80007858:	00813083          	ld	ra,8(sp)
    8000785c:	00013403          	ld	s0,0(sp)
    80007860:	01010113          	addi	sp,sp,16
    80007864:	00008067          	ret
    80007868:	00001517          	auipc	a0,0x1
    8000786c:	f0850513          	addi	a0,a0,-248 # 80008770 <digits+0x70>
    80007870:	fffff097          	auipc	ra,0xfffff
    80007874:	f2c080e7          	jalr	-212(ra) # 8000679c <panic>
    80007878:	00001517          	auipc	a0,0x1
    8000787c:	ed850513          	addi	a0,a0,-296 # 80008750 <digits+0x50>
    80007880:	fffff097          	auipc	ra,0xfffff
    80007884:	f1c080e7          	jalr	-228(ra) # 8000679c <panic>

0000000080007888 <__memset>:
    80007888:	ff010113          	addi	sp,sp,-16
    8000788c:	00813423          	sd	s0,8(sp)
    80007890:	01010413          	addi	s0,sp,16
    80007894:	1a060e63          	beqz	a2,80007a50 <__memset+0x1c8>
    80007898:	40a007b3          	neg	a5,a0
    8000789c:	0077f793          	andi	a5,a5,7
    800078a0:	00778693          	addi	a3,a5,7
    800078a4:	00b00813          	li	a6,11
    800078a8:	0ff5f593          	andi	a1,a1,255
    800078ac:	fff6071b          	addiw	a4,a2,-1
    800078b0:	1b06e663          	bltu	a3,a6,80007a5c <__memset+0x1d4>
    800078b4:	1cd76463          	bltu	a4,a3,80007a7c <__memset+0x1f4>
    800078b8:	1a078e63          	beqz	a5,80007a74 <__memset+0x1ec>
    800078bc:	00b50023          	sb	a1,0(a0)
    800078c0:	00100713          	li	a4,1
    800078c4:	1ae78463          	beq	a5,a4,80007a6c <__memset+0x1e4>
    800078c8:	00b500a3          	sb	a1,1(a0)
    800078cc:	00200713          	li	a4,2
    800078d0:	1ae78a63          	beq	a5,a4,80007a84 <__memset+0x1fc>
    800078d4:	00b50123          	sb	a1,2(a0)
    800078d8:	00300713          	li	a4,3
    800078dc:	18e78463          	beq	a5,a4,80007a64 <__memset+0x1dc>
    800078e0:	00b501a3          	sb	a1,3(a0)
    800078e4:	00400713          	li	a4,4
    800078e8:	1ae78263          	beq	a5,a4,80007a8c <__memset+0x204>
    800078ec:	00b50223          	sb	a1,4(a0)
    800078f0:	00500713          	li	a4,5
    800078f4:	1ae78063          	beq	a5,a4,80007a94 <__memset+0x20c>
    800078f8:	00b502a3          	sb	a1,5(a0)
    800078fc:	00700713          	li	a4,7
    80007900:	18e79e63          	bne	a5,a4,80007a9c <__memset+0x214>
    80007904:	00b50323          	sb	a1,6(a0)
    80007908:	00700e93          	li	t4,7
    8000790c:	00859713          	slli	a4,a1,0x8
    80007910:	00e5e733          	or	a4,a1,a4
    80007914:	01059e13          	slli	t3,a1,0x10
    80007918:	01c76e33          	or	t3,a4,t3
    8000791c:	01859313          	slli	t1,a1,0x18
    80007920:	006e6333          	or	t1,t3,t1
    80007924:	02059893          	slli	a7,a1,0x20
    80007928:	40f60e3b          	subw	t3,a2,a5
    8000792c:	011368b3          	or	a7,t1,a7
    80007930:	02859813          	slli	a6,a1,0x28
    80007934:	0108e833          	or	a6,a7,a6
    80007938:	03059693          	slli	a3,a1,0x30
    8000793c:	003e589b          	srliw	a7,t3,0x3
    80007940:	00d866b3          	or	a3,a6,a3
    80007944:	03859713          	slli	a4,a1,0x38
    80007948:	00389813          	slli	a6,a7,0x3
    8000794c:	00f507b3          	add	a5,a0,a5
    80007950:	00e6e733          	or	a4,a3,a4
    80007954:	000e089b          	sext.w	a7,t3
    80007958:	00f806b3          	add	a3,a6,a5
    8000795c:	00e7b023          	sd	a4,0(a5)
    80007960:	00878793          	addi	a5,a5,8
    80007964:	fed79ce3          	bne	a5,a3,8000795c <__memset+0xd4>
    80007968:	ff8e7793          	andi	a5,t3,-8
    8000796c:	0007871b          	sext.w	a4,a5
    80007970:	01d787bb          	addw	a5,a5,t4
    80007974:	0ce88e63          	beq	a7,a4,80007a50 <__memset+0x1c8>
    80007978:	00f50733          	add	a4,a0,a5
    8000797c:	00b70023          	sb	a1,0(a4)
    80007980:	0017871b          	addiw	a4,a5,1
    80007984:	0cc77663          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    80007988:	00e50733          	add	a4,a0,a4
    8000798c:	00b70023          	sb	a1,0(a4)
    80007990:	0027871b          	addiw	a4,a5,2
    80007994:	0ac77e63          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    80007998:	00e50733          	add	a4,a0,a4
    8000799c:	00b70023          	sb	a1,0(a4)
    800079a0:	0037871b          	addiw	a4,a5,3
    800079a4:	0ac77663          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    800079a8:	00e50733          	add	a4,a0,a4
    800079ac:	00b70023          	sb	a1,0(a4)
    800079b0:	0047871b          	addiw	a4,a5,4
    800079b4:	08c77e63          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    800079b8:	00e50733          	add	a4,a0,a4
    800079bc:	00b70023          	sb	a1,0(a4)
    800079c0:	0057871b          	addiw	a4,a5,5
    800079c4:	08c77663          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    800079c8:	00e50733          	add	a4,a0,a4
    800079cc:	00b70023          	sb	a1,0(a4)
    800079d0:	0067871b          	addiw	a4,a5,6
    800079d4:	06c77e63          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    800079d8:	00e50733          	add	a4,a0,a4
    800079dc:	00b70023          	sb	a1,0(a4)
    800079e0:	0077871b          	addiw	a4,a5,7
    800079e4:	06c77663          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    800079e8:	00e50733          	add	a4,a0,a4
    800079ec:	00b70023          	sb	a1,0(a4)
    800079f0:	0087871b          	addiw	a4,a5,8
    800079f4:	04c77e63          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    800079f8:	00e50733          	add	a4,a0,a4
    800079fc:	00b70023          	sb	a1,0(a4)
    80007a00:	0097871b          	addiw	a4,a5,9
    80007a04:	04c77663          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    80007a08:	00e50733          	add	a4,a0,a4
    80007a0c:	00b70023          	sb	a1,0(a4)
    80007a10:	00a7871b          	addiw	a4,a5,10
    80007a14:	02c77e63          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    80007a18:	00e50733          	add	a4,a0,a4
    80007a1c:	00b70023          	sb	a1,0(a4)
    80007a20:	00b7871b          	addiw	a4,a5,11
    80007a24:	02c77663          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    80007a28:	00e50733          	add	a4,a0,a4
    80007a2c:	00b70023          	sb	a1,0(a4)
    80007a30:	00c7871b          	addiw	a4,a5,12
    80007a34:	00c77e63          	bgeu	a4,a2,80007a50 <__memset+0x1c8>
    80007a38:	00e50733          	add	a4,a0,a4
    80007a3c:	00b70023          	sb	a1,0(a4)
    80007a40:	00d7879b          	addiw	a5,a5,13
    80007a44:	00c7f663          	bgeu	a5,a2,80007a50 <__memset+0x1c8>
    80007a48:	00f507b3          	add	a5,a0,a5
    80007a4c:	00b78023          	sb	a1,0(a5)
    80007a50:	00813403          	ld	s0,8(sp)
    80007a54:	01010113          	addi	sp,sp,16
    80007a58:	00008067          	ret
    80007a5c:	00b00693          	li	a3,11
    80007a60:	e55ff06f          	j	800078b4 <__memset+0x2c>
    80007a64:	00300e93          	li	t4,3
    80007a68:	ea5ff06f          	j	8000790c <__memset+0x84>
    80007a6c:	00100e93          	li	t4,1
    80007a70:	e9dff06f          	j	8000790c <__memset+0x84>
    80007a74:	00000e93          	li	t4,0
    80007a78:	e95ff06f          	j	8000790c <__memset+0x84>
    80007a7c:	00000793          	li	a5,0
    80007a80:	ef9ff06f          	j	80007978 <__memset+0xf0>
    80007a84:	00200e93          	li	t4,2
    80007a88:	e85ff06f          	j	8000790c <__memset+0x84>
    80007a8c:	00400e93          	li	t4,4
    80007a90:	e7dff06f          	j	8000790c <__memset+0x84>
    80007a94:	00500e93          	li	t4,5
    80007a98:	e75ff06f          	j	8000790c <__memset+0x84>
    80007a9c:	00600e93          	li	t4,6
    80007aa0:	e6dff06f          	j	8000790c <__memset+0x84>

0000000080007aa4 <__memmove>:
    80007aa4:	ff010113          	addi	sp,sp,-16
    80007aa8:	00813423          	sd	s0,8(sp)
    80007aac:	01010413          	addi	s0,sp,16
    80007ab0:	0e060863          	beqz	a2,80007ba0 <__memmove+0xfc>
    80007ab4:	fff6069b          	addiw	a3,a2,-1
    80007ab8:	0006881b          	sext.w	a6,a3
    80007abc:	0ea5e863          	bltu	a1,a0,80007bac <__memmove+0x108>
    80007ac0:	00758713          	addi	a4,a1,7
    80007ac4:	00a5e7b3          	or	a5,a1,a0
    80007ac8:	40a70733          	sub	a4,a4,a0
    80007acc:	0077f793          	andi	a5,a5,7
    80007ad0:	00f73713          	sltiu	a4,a4,15
    80007ad4:	00174713          	xori	a4,a4,1
    80007ad8:	0017b793          	seqz	a5,a5
    80007adc:	00e7f7b3          	and	a5,a5,a4
    80007ae0:	10078863          	beqz	a5,80007bf0 <__memmove+0x14c>
    80007ae4:	00900793          	li	a5,9
    80007ae8:	1107f463          	bgeu	a5,a6,80007bf0 <__memmove+0x14c>
    80007aec:	0036581b          	srliw	a6,a2,0x3
    80007af0:	fff8081b          	addiw	a6,a6,-1
    80007af4:	02081813          	slli	a6,a6,0x20
    80007af8:	01d85893          	srli	a7,a6,0x1d
    80007afc:	00858813          	addi	a6,a1,8
    80007b00:	00058793          	mv	a5,a1
    80007b04:	00050713          	mv	a4,a0
    80007b08:	01088833          	add	a6,a7,a6
    80007b0c:	0007b883          	ld	a7,0(a5)
    80007b10:	00878793          	addi	a5,a5,8
    80007b14:	00870713          	addi	a4,a4,8
    80007b18:	ff173c23          	sd	a7,-8(a4)
    80007b1c:	ff0798e3          	bne	a5,a6,80007b0c <__memmove+0x68>
    80007b20:	ff867713          	andi	a4,a2,-8
    80007b24:	02071793          	slli	a5,a4,0x20
    80007b28:	0207d793          	srli	a5,a5,0x20
    80007b2c:	00f585b3          	add	a1,a1,a5
    80007b30:	40e686bb          	subw	a3,a3,a4
    80007b34:	00f507b3          	add	a5,a0,a5
    80007b38:	06e60463          	beq	a2,a4,80007ba0 <__memmove+0xfc>
    80007b3c:	0005c703          	lbu	a4,0(a1)
    80007b40:	00e78023          	sb	a4,0(a5)
    80007b44:	04068e63          	beqz	a3,80007ba0 <__memmove+0xfc>
    80007b48:	0015c603          	lbu	a2,1(a1)
    80007b4c:	00100713          	li	a4,1
    80007b50:	00c780a3          	sb	a2,1(a5)
    80007b54:	04e68663          	beq	a3,a4,80007ba0 <__memmove+0xfc>
    80007b58:	0025c603          	lbu	a2,2(a1)
    80007b5c:	00200713          	li	a4,2
    80007b60:	00c78123          	sb	a2,2(a5)
    80007b64:	02e68e63          	beq	a3,a4,80007ba0 <__memmove+0xfc>
    80007b68:	0035c603          	lbu	a2,3(a1)
    80007b6c:	00300713          	li	a4,3
    80007b70:	00c781a3          	sb	a2,3(a5)
    80007b74:	02e68663          	beq	a3,a4,80007ba0 <__memmove+0xfc>
    80007b78:	0045c603          	lbu	a2,4(a1)
    80007b7c:	00400713          	li	a4,4
    80007b80:	00c78223          	sb	a2,4(a5)
    80007b84:	00e68e63          	beq	a3,a4,80007ba0 <__memmove+0xfc>
    80007b88:	0055c603          	lbu	a2,5(a1)
    80007b8c:	00500713          	li	a4,5
    80007b90:	00c782a3          	sb	a2,5(a5)
    80007b94:	00e68663          	beq	a3,a4,80007ba0 <__memmove+0xfc>
    80007b98:	0065c703          	lbu	a4,6(a1)
    80007b9c:	00e78323          	sb	a4,6(a5)
    80007ba0:	00813403          	ld	s0,8(sp)
    80007ba4:	01010113          	addi	sp,sp,16
    80007ba8:	00008067          	ret
    80007bac:	02061713          	slli	a4,a2,0x20
    80007bb0:	02075713          	srli	a4,a4,0x20
    80007bb4:	00e587b3          	add	a5,a1,a4
    80007bb8:	f0f574e3          	bgeu	a0,a5,80007ac0 <__memmove+0x1c>
    80007bbc:	02069613          	slli	a2,a3,0x20
    80007bc0:	02065613          	srli	a2,a2,0x20
    80007bc4:	fff64613          	not	a2,a2
    80007bc8:	00e50733          	add	a4,a0,a4
    80007bcc:	00c78633          	add	a2,a5,a2
    80007bd0:	fff7c683          	lbu	a3,-1(a5)
    80007bd4:	fff78793          	addi	a5,a5,-1
    80007bd8:	fff70713          	addi	a4,a4,-1
    80007bdc:	00d70023          	sb	a3,0(a4)
    80007be0:	fec798e3          	bne	a5,a2,80007bd0 <__memmove+0x12c>
    80007be4:	00813403          	ld	s0,8(sp)
    80007be8:	01010113          	addi	sp,sp,16
    80007bec:	00008067          	ret
    80007bf0:	02069713          	slli	a4,a3,0x20
    80007bf4:	02075713          	srli	a4,a4,0x20
    80007bf8:	00170713          	addi	a4,a4,1
    80007bfc:	00e50733          	add	a4,a0,a4
    80007c00:	00050793          	mv	a5,a0
    80007c04:	0005c683          	lbu	a3,0(a1)
    80007c08:	00178793          	addi	a5,a5,1
    80007c0c:	00158593          	addi	a1,a1,1
    80007c10:	fed78fa3          	sb	a3,-1(a5)
    80007c14:	fee798e3          	bne	a5,a4,80007c04 <__memmove+0x160>
    80007c18:	f89ff06f          	j	80007ba0 <__memmove+0xfc>

0000000080007c1c <__putc>:
    80007c1c:	fe010113          	addi	sp,sp,-32
    80007c20:	00813823          	sd	s0,16(sp)
    80007c24:	00113c23          	sd	ra,24(sp)
    80007c28:	02010413          	addi	s0,sp,32
    80007c2c:	00050793          	mv	a5,a0
    80007c30:	fef40593          	addi	a1,s0,-17
    80007c34:	00100613          	li	a2,1
    80007c38:	00000513          	li	a0,0
    80007c3c:	fef407a3          	sb	a5,-17(s0)
    80007c40:	fffff097          	auipc	ra,0xfffff
    80007c44:	b3c080e7          	jalr	-1220(ra) # 8000677c <console_write>
    80007c48:	01813083          	ld	ra,24(sp)
    80007c4c:	01013403          	ld	s0,16(sp)
    80007c50:	02010113          	addi	sp,sp,32
    80007c54:	00008067          	ret

0000000080007c58 <__getc>:
    80007c58:	fe010113          	addi	sp,sp,-32
    80007c5c:	00813823          	sd	s0,16(sp)
    80007c60:	00113c23          	sd	ra,24(sp)
    80007c64:	02010413          	addi	s0,sp,32
    80007c68:	fe840593          	addi	a1,s0,-24
    80007c6c:	00100613          	li	a2,1
    80007c70:	00000513          	li	a0,0
    80007c74:	fffff097          	auipc	ra,0xfffff
    80007c78:	ae8080e7          	jalr	-1304(ra) # 8000675c <console_read>
    80007c7c:	fe844503          	lbu	a0,-24(s0)
    80007c80:	01813083          	ld	ra,24(sp)
    80007c84:	01013403          	ld	s0,16(sp)
    80007c88:	02010113          	addi	sp,sp,32
    80007c8c:	00008067          	ret

0000000080007c90 <console_handler>:
    80007c90:	fe010113          	addi	sp,sp,-32
    80007c94:	00813823          	sd	s0,16(sp)
    80007c98:	00113c23          	sd	ra,24(sp)
    80007c9c:	00913423          	sd	s1,8(sp)
    80007ca0:	02010413          	addi	s0,sp,32
    80007ca4:	14202773          	csrr	a4,scause
    80007ca8:	100027f3          	csrr	a5,sstatus
    80007cac:	0027f793          	andi	a5,a5,2
    80007cb0:	06079e63          	bnez	a5,80007d2c <console_handler+0x9c>
    80007cb4:	00074c63          	bltz	a4,80007ccc <console_handler+0x3c>
    80007cb8:	01813083          	ld	ra,24(sp)
    80007cbc:	01013403          	ld	s0,16(sp)
    80007cc0:	00813483          	ld	s1,8(sp)
    80007cc4:	02010113          	addi	sp,sp,32
    80007cc8:	00008067          	ret
    80007ccc:	0ff77713          	andi	a4,a4,255
    80007cd0:	00900793          	li	a5,9
    80007cd4:	fef712e3          	bne	a4,a5,80007cb8 <console_handler+0x28>
    80007cd8:	ffffe097          	auipc	ra,0xffffe
    80007cdc:	6dc080e7          	jalr	1756(ra) # 800063b4 <plic_claim>
    80007ce0:	00a00793          	li	a5,10
    80007ce4:	00050493          	mv	s1,a0
    80007ce8:	02f50c63          	beq	a0,a5,80007d20 <console_handler+0x90>
    80007cec:	fc0506e3          	beqz	a0,80007cb8 <console_handler+0x28>
    80007cf0:	00050593          	mv	a1,a0
    80007cf4:	00001517          	auipc	a0,0x1
    80007cf8:	98450513          	addi	a0,a0,-1660 # 80008678 <CONSOLE_STATUS+0x668>
    80007cfc:	fffff097          	auipc	ra,0xfffff
    80007d00:	afc080e7          	jalr	-1284(ra) # 800067f8 <__printf>
    80007d04:	01013403          	ld	s0,16(sp)
    80007d08:	01813083          	ld	ra,24(sp)
    80007d0c:	00048513          	mv	a0,s1
    80007d10:	00813483          	ld	s1,8(sp)
    80007d14:	02010113          	addi	sp,sp,32
    80007d18:	ffffe317          	auipc	t1,0xffffe
    80007d1c:	6d430067          	jr	1748(t1) # 800063ec <plic_complete>
    80007d20:	fffff097          	auipc	ra,0xfffff
    80007d24:	3e0080e7          	jalr	992(ra) # 80007100 <uartintr>
    80007d28:	fddff06f          	j	80007d04 <console_handler+0x74>
    80007d2c:	00001517          	auipc	a0,0x1
    80007d30:	a4c50513          	addi	a0,a0,-1460 # 80008778 <digits+0x78>
    80007d34:	fffff097          	auipc	ra,0xfffff
    80007d38:	a68080e7          	jalr	-1432(ra) # 8000679c <panic>
	...
