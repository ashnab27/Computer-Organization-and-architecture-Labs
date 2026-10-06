# Task 2: Conditional Branching (beq) vs Unconditional Jump (j)
.text
.globl main
main:
    addi t0, zero, 5        # t0 = 5
    addi t1, zero, 5        # t1 = 5
    beq  t0, t1, equal      # conditional: jump to 'equal' only if t0 == t1
    addi a0, zero, 0        # runs only if branch NOT taken
    j    done               # unconditional: always jumps to 'done'
equal:
    addi a0, zero, 1        # runs only if branch t0 and t1 are equal
done:
    li   a7, 10             # exit syscall
    ecall
