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
    .globl  memset_simple
    .type   memset_simple, %function
memset_simple:
 movs    r3, r2
    beq     end

loop:
    strb    r1, [r0], #1
    subs    r3, #1
    bne     loop

end:

    mov     r0, r2
    bx      lr
    bx lr
