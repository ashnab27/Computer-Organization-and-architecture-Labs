.text
main:
    li a3, 10
    jal ra, EqSolver
    li a0, 1
    mv a1, t0
    ecall
    li a0, 10
    ecall
EqSolver:
    mul t0, a3, a3
    mul t1, t0, a3
    li t2, 5
    mul t2, t0, t2
    li t3, 6
    mul t3, a3, t3
    add t0, t1, t2
    add t0, t0, t3
    jalr zero, ra, 0
