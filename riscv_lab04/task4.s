# Task 4: Array Summation Function
.data
numbers: .word 1, 2, 3, 4, 5
count:   .word 5

.text
.globl main
main:
    la  a0, numbers
    lw  a1, count
    jal ra, sumArray

    li  a7, 1
    ecall

    li  a7, 10
    ecall

sumArray:
    li  t3, 0
    li  t4, 0

sum_loop:
    bge  t4, a1, sum_done
    slli t5, t4, 2
    add  t5, a0, t5
    lw   t5, 0(t5)
    add  t3, t3, t5
    addi t4, t4, 1
    j    sum_loop

sum_done:
    mv   a0, t3
    ret
