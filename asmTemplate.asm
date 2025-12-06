;#include <xc.inc>

; When assembly code is placed in a psect, it can be manipulated as a
; whole by the linker and placed in memory.  
;
; In this example, barfunc is the program section (psect) name, 'local' means
; that the section will not be combined with other sections even if they have
; the same name.  class=CODE means the barfunc must go in the CODE container.
; PIC18's should have a delta (addressible unit size) of 1 (default) since they
; are byte addressible.  PIC10/12/16's have a delta of 2 since they are word
; addressible.  PIC18's should have a reloc (alignment) flag of 2 for any
; psect which contains executable code.  PIC10/12/16's can use the default
; reloc value of 1.  Use one of the psects below for the device you use:

;psect   barfunc,local,class=CODE,delta=2 ; PIC10/12/16
; psect   barfunc,local,class=CODE,reloc=2 ; PIC18

;global _bar ; extern of bar function goes in the C source file
;_bar:
;    movf PORTA,w    ; here we use a symbol defined via xc.inc
;    return

    
title   "asmTemplate - Assembly Language Coding Template"
;
;  Explain the Operation of the program.
;  
;  "C" equivalent Code:
;
;  // Put "C" equivalent code here
;
;
;  Author: Duvall Pinkney
;  Date: 12/5/2025
;
    LIST R=DEC
 INCLUDE "p16f684.inc"
   
__CONFIG _FCMEN_OFF  &  _IESO_OFF  & _BOD_OFF & _CPD_OFF & _CP_OFF & _MCLRE_ON & 
_PWRTE_ON & _WDT_OFF & _INTOSCIO
 
; variables
 CBLOCK 0x20
; Put variable names here
; If Variable Longer than 1 byte, Put in ":#bytes"
 ENDC
 
 PAGE
 org      0
  nop                ; NOP REQUIRED for Debugger
  
; Mainline code
 
 PAGE
;  Subroutines
 
 
end