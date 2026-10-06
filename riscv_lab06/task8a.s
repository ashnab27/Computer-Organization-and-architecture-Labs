.text
main:
    li t0, 7
    jal ra, fib_iter
    mv a1, a0
    li a0, 1
    ecall
    li a0, 10
    ecall
fib_iter:
    beq t0, zero, zero_case
    li t1, 0
    li t2, 1
    li t3, 2
loop:
    bgt t3, t0, done
    add t4, t1, t2
    mv t1, t2
    mv t2, t4
    addi t3, t3, 1
    j loop
zero_case:
    mv a0, zero
    jalr zero, ra, 0
done:
    mv a0, t2
    jalr zero, ra, 0
