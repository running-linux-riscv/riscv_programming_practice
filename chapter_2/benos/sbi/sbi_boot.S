.section ".text.boot"

.globl _start
_start:
	/* setup stack with 4KB size */
	la sp, stacks_end

	/* goto C */
	tail sbi_main

.section .data
.align  12
	.skip 4096
.global stacks_end
stacks_end:
