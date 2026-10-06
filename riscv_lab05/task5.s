# Task 5: Logical Left Shift Multiplication (slli)
.text
.globl main
main:
    addi  t0, zero, 2       # t0 = 2
    slli  t0, t0, 1         # Shift left once:  t0 = 2 * 2^1 = 4
    slli  t0, t0, 1         # Shift left twice: t0 = 4 * 2^1 = 8

    mv    a0, t0            # Load result to argument register
    li    a7, 1             # Print integer syscall
    ecall

    li    a7, 10            # Exit
    ecall
