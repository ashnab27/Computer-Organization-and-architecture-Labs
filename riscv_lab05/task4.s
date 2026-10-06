# Task 4: C if-else Conversion (if a == b: c = d - e else: c = d + e)
.data
a: .word 5
b: .word 10
c: .word 0
d: .word 4
e: .word 3

.text
.globl main
main:
    la   t0, a
    lw   t1, 0(t0)          # t1 = a (5)

    la   t0, b
    lw   t2, 0(t0)          # t2 = b (10)

    la   t0, d
    lw   t3, 0(t0)          # t3 = d (4)

    la   t0, e
    lw   t4, 0(t0)          # t4 = e (3)

    la   t0, c              # t0 holds address of c

    beq  t1, t2, fout       # If a == b, branch to fout (True block)

false:
    add  t5, t3, t4         # c = d + e = 7
    sw   t5, 0(t0)          # Store c into memory
    j    end

fout:
    sub  t6, t3, t4         # c = d - e = 1
    sw   t6, 0(t0)          # Store c into memory

end:
    li   a7, 10             # Exit simulator
    ecall
