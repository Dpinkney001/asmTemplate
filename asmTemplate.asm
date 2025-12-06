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