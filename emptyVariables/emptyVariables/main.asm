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

	aVariable BYTE ?	; Here we declare a variable with a 
						; with a BYTE data type, this can hold a 8bit unsigned integer 
						; By using ? we can tell the assembler that the BYTE will not contain a value
						; as we are outputing the values into 8-bit data type 
						; we can output the decimal value of the DWORD as a BYTE as we only need to output decimal value of 65536
						; we need the DWORD to store the binary value as that exceeds more than 8-bits 
						

main PROC ; main procedure
	; write your assembly code here

	INVOKE ExitProcess, 0 ; call exit function
  
main ENDP ; exit main procedure
END main  ; stop assembling