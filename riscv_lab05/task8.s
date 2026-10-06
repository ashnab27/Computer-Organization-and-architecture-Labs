# Task 8: Nested Loop Implementation
.text
.globl main
main:
    addi  t0, zero, 0       # Counter = 0
    addi  t1, zero, 0       # x = 0

outer:
    addi  t3, zero, 3       # Outer threshold x < 3
    bge   t1, t3, end       # If x >= 3 exit outer loop
    addi  t2, zero, 0       # y = 0

inner:
    addi  t4, zero, 2       # Inner threshold y < 2
    bge   t2, t4, next_x    # If y >= 2 jump to next x iteration
    add   t0, t1, t2        # Counter = x + y
    addi  t2, t2, 1         # y++
    j     inner

next_x:
    addi  t1, t1, 1         # x++
    j     outer

end:
    li    a7, 10            # Exit code
    ecall
