# Task 1: RISC-V Basic Arithmetic Instructions
.text
.globl main
main:
    addi t0, x0, 5    # A = 5
    addi t1, x0, 4    # B = 4
    add  t2, t0, t1   # C = A + B = 9
    sub  t3, t0, t1   # D = A - B = 1
    mul  t4, t0, t1   # E = A * B = 20
    mul  t5, t0, t0   # F = A^2 = 25
