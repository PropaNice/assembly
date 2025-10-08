; A simple template for assembly programs.
.386  ; Specify instruction set
.model flat, stdcall  ; Flat memory model, std. calling convention
.stack 4096 ; Reserve stack space
ExitProcess PROTO, dwExitCode: DWORD  ; Exit process prototype


						; Example #2 – Define variables
						; Task: Write an assembly program that containsthe following:
						; A sum variable of the appropriate size to hold the initializer 0x10000
						; A variable that does not contain an initial value and is able to hold the integer values 0-255.



.data ; data segment
	; define your variables here

.code ; code segment
	; define variables here
	sum DWORD 10000h	; 0x10000 is a hexadecimal number 
						; which equates to 65536. 
						; This requires 17-bits to 
						; output into binary, using a DWORD means 
						; we can store up 32bit unsigned integers

	aVariable BYTE ?	; Here we declare aVariable with a BYTE data type, this allows to use 
						; a 8bit unsigned integer.  
						; We must ensure to use a unsigned integer to keep within range
						; of 0-255.

						; We can declare that variable will contain no value when it is 
						; initialized by using "?" 
						
						

main PROC ; main procedure
	; write your assembly code here

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling