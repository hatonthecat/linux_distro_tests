
;
;     ML /AT BOOTSEC.ASM    ( /AT for COM file )
;

; Here's a quick summary of what the BIOS does when booting up.
;
; 1) Loads Sector 1, Track 0, Head 0 of the boot drive( A or C ) to
;    absolute address 07C00h-07DFFh
;
; 2) Checks the 16 bit word at absolute address 07DFEh for AA55h.  This is
;    the boot signature and is used by the BIOS to ensure that the sector
;    contains a value bootsector.
;
;    If this signature isn't present, the BIOS will display a message like
;    "Operating System Not Found"
;
; 4) Loads DL with
;         00h if the boot sector was loaded from drive A,
;         80h if the boot sector was loaded from drive C
;
;    This way, the bootsector can determine which drive it was booted from.
;
; 5) Jumps to 0000:7C00h, which is the start of the bootsector
;
; Code taken from:
; Send yer comments to mjvines@undergrad.math.uwaterloo.ca
;
;

.386  ; There are a couple 386+ opcodes.  Who has a 286 anymore anyways?

_text SEGMENT PUBLIC USE16
  assume CS:_text, DS:_text
    org 0h


CRLF MACRO
  mov ax, 0E0Dh
  xor bx, bx
  int 10h
  mov al, 0Ah
  int 10h
ENDM


PRINT MACRO var

  pop dx
  mov di, var
  call printreg

  mov ax, 0E20h
  xor bx, bx
  int 10h

ENDM


EntryPoint:
    mov ax, 03h             ; set video mode 80x25, 16 colors
    int 10h                 ; change video mode & clear screen

    mov ax, 4c01h           ; set error code to 1
    int 21h                 ; return error code
    
  push sp
  push ss

  call NextLine  ; get original IP+5 on the STACK
NextLine:
  push cs

  push es
  push ds
  push bp
  push di
  push si
  push dx
  push cx
  push bx
  push ax

  ; print a pretty message
  mov ax, 1301h
  mov bx, 0007h
  mov cx, 23
  mov dh, 10
  mov dl, 1
  push cs
  pop es
  mov bp, String
  int 10h
  CRLF
  CRLF

  ; print the values of all the registers
  PRINT _AX
  PRINT _BX
  PRINT _CX
  PRINT _DX
  CRLF

  PRINT _SI
  PRINT _DI
  PRINT _BP
  CRLF

  PRINT _DS
  PRINT _ES
  CRLF

  PRINT _CS


  pop  ax
  sub ax, 5      ; ajust IP back five
  push ax

  PRINT _IP

  PRINT _SS
  PRINT _SP
  CRLF

  ; make a little beep
  mov ax, 0E07h
  int 10h


  ; nothing else to do, so hang
hang:
  jmp hang



; Big messy procedure that prints a three character string pointed to
; by DS:DI followed by the 16 bit hexidecimal number in DX.
printreg:

  mov ah, 0Eh
  xor bx, bx
  mov al, byte ptr [di]
  int 10h
  mov al, byte ptr [di+1]
  int 10h
  mov al, byte ptr [di+2]
  int 10h

  xchg dl, dh
  rol dl, 4
  rol dh, 4

  xor bx, bx
  mov ah, 0Eh
  mov cx, 4
ploop:
  mov al, dl
  and al, 0Fh
  shr dx, 4
  add al, '0'

  cmp al, '9'
  jbe nochange

  add al, 'A' - '9'-1

nochange:

  int 10h

  loop ploop

  RET



; Data Section.
;
; Notice that all the data pointers must have 7C00h added to it.  This is
; because the bootsector is loaded to 0000:7C00h, so the base offset is
; 7C00h.  However, the assembler thinks that the base offset is 0000h,
; so the 7C00h's are required to "fix-up" the base offest.
;
; Yes, there are many better ways of getting around this, but it's my code
; and I can do what I want!  What's that about my attitude?
;

String = $ + 7C00h
  db "initial register values"

_AX = $ + 7C00h
  db "AX="
_BX = $ + 7C00h
  db "BX="
_CX = $ + 7C00h
  db "CX="
_DX = $ + 7C00h
  db "DX="

_SI = $ + 7C00h
  db "SI="
_DI = $ + 7C00h
  db "DI="
_BP = $ + 7C00h
  db "BP="
_SP = $ + 7C00h
  db "SP="
_IP = $ + 7C00h
  db "IP="

_CS = $ + 7C00h
  db "CS="
_DS = $ + 7C00h
  db "DS="
_ES = $ + 7C00h
  db "ES="
_SS = $ + 7C00h
   db "SS="


ORG 510    ; Make the file 512 bytes long

  DW 0AA55h  ; Add the boot signature

_text ENDS

  END EntryPoint

