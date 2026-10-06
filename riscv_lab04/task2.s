# Task 2: Compound Expression Evaluation
.text
.globl main
main:
    sub t6, t0, t1    # t6 = a - c
    add t5, t2, t3    # t5 = d + e
    mul t5, t5, t4    # t5 = (d + e) * f
    add t5, t6, t5    # m = (a - c) + (d + e) * f
