.section .text,"ax"
.cpu cortex-m3
.thumb
.syntax unified

.equ _FIO0DIR, 0x2009C000
.equ _FIO0SET, 0x2009C018
.equ _FIO0CLR, 0x2009C01C

.global exercice1

 /***********************************
 * function     : exercice1
 * arguments    : none
 * return value : none
 *   CONTROLE DE LEDs
 ***********************************/

.thumb_func
exercice1:
	// Initialisation de FIO0DIR
	LDR R0, =_FIO0DIR		// R0 contient l'adresse du registre FIO0DIR
	MOV R1, #0xFF
	MOV R1, R1, LSL #4		// (0xFF<<22) P0.04 -> P0.11 en sortie
	STR R1, [R0]			// Ecriture dans le registre FIO0DIR

	//your code here

	mov	pc, r14		/* end of subroutine */



.weak exercice1
.ltorg
