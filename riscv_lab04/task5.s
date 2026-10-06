# Task 5: Table of Two Memory Access
.data
values: .word 0, 2, 4, 6, 8, 10, 12

.text
.globl main
main:
    la  s0, values
    lw  s1, 0(s0)
    lw  s2, 4(s0)
    lw  s3, 8(s0)
    lw  s4, 12(s0)
    lw  s5, 16(s0)
    lw  s6, 20(s0)
    lw  s7, 24(s0)

    li  a0, 10
    ecall
