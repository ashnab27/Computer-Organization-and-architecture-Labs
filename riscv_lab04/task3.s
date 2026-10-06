# Task 3: Bitwise Logic & Memory Operations
.data
result_and: .word 0
result_or:  .word 0
result_xor: .word 0

.text
.globl main
main:
    li  t0, 0xFFF
    li  t1, 0xF0F

    and t2, t0, t1
    or  t3, t0, t1
    xor t4, t0, t1

    la  t5, result_and
    sw  t2, 0(t5)
    la  t5, result_or
    sw  t3, 0(t5)
    la  t5, result_xor
    sw  t4, 0(t5)

    li  a7, 1
    mv  a0, t2
    ecall

    li  a7, 1
    mv  a0, t3
    ecall

    li  a7, 1
    mv  a0, t4
    ecall

    li  a7, 10
    ecall
