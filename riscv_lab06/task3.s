.text
main:
    li a0, 10
    li a1, 20
    jal ra, EqSolver
    li a0, 1
    mv a1, t0
    ecall
    li a0, 10
    ecall
EqSolver:
    add t0, a0, a1
    sub t1, a0, a1
    mul t0, t0, t1
    jalr zero, ra, 0
