	.section .data

data_items:
	.long -3,-1,-2

	.section .text
	
	.globl _start
_start:
	movl $0,%edi
  movl data_items(,%edi,4),%eax
  movl %eax,%ebx
loop:
  cmpl $0,%eax
  je exit
  incl %edi
  movl data_items(,%edi,4),%eax
	cmpl %eax,%ebx
  ja loop
  movl %eax,%ebx
  jmp loop
exit:
  movl $1,%eax
  int $0x80
