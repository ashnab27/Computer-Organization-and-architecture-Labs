# Task 6: For Loop Implementation (i = 1 to 5)
.text
.globl main
main:
    addi  t0, zero, 0       # counter = 0
    addi  t1, zero, 1       # i = 1
    addi  t2, zero, 6       # loop limit boundary = 6

loop:
    addi  t0, t0, 1         # counter++
    addi  t1, t1, 1         # i++
    blt   t1, t2, loop      # If i < 6, repeat loop

    li    a7, 10            # Exit code
    ecall
