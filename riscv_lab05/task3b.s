# Task 3(b): True Condition Branch Taken
.text
.globl main
main:
    addi  s0, s0, 4         # s0 = s0 + 4 (s0 = 4)
    addi  s1, s1, 4         # s1 = s1 + 4 (s1 = 4)
    beq   s0, s1, Fin       # If s0 == s1, branch taken -> jumps to Fin
True:
    add   s2, s1, s0        # s2 = s1 + s0 (skipped)
    j     end               # Skip Fin block
Fin:
    sub   s2, s1, s0        # s2 = s1 - s0 = 0 (runs when s0 == s1)
end:
    li    a7, 10            # Exit code
    ecall
