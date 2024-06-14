/*
 * Copyright (c) 2022 Sung Ho Park and CSOS
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <ubinos_config.h>

    .syntax unified
    .arch   armv7-m

    .text
    .thumb

    .thumb_func
    .align  1
    .globl  memcpy_simple
    .type   memcpy_simple, %function
memcpy_simple:
    /* memcpy_simple.h 에서 정의된 함수, memcpy_simple 를 구현하라. */
    // 각 매개변수 전달을 위해 사용되는 레지스터
    //    void * destination : r0
    //    void * source      : r1
    //    size_t size        : r2
    // 사용 명령: movs, cmp, beq, strb, adds, b, bx, ldrb, push, pop
    push    {r4}

    cmp     r2, #0
    beq     memcpy_simple_done

    mov     r3, r0    // r3 = destination
    mov     r4, r1    // r4 = source

memcpy_simple_loop:

    ldrb    r5, [r4], #1
    strb    r5, [r3], #1

    subs    r2, r2, #1
    bne     memcpy_simple_loop

memcpy_simple_done:

    pop     {r4}










    bx lr
