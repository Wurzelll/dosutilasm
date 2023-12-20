/*****dosutil.asm*****/

.MODEL small

.CODE

_add proc near
    push    bp
    mov     bp, sp

    mov     ax, [bp + 4]
    add     ax, [bp + 6]

    pop     bp
    ret
_add endp

_multiply proc near
    push    bp
    mov     bp, sp

    mov     ax, [bp + 4]
    mul     word ptr [bp + 6]

    pop bp
    ret
_multiply endp

public _add
public _multiply

