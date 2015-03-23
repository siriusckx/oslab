
;;----------------------------------------------------------------------
;; shift-2.asm
;;
;; 移位操作实验(1)
;; 实验移位指令对于符号位的处理
;;----------------------------------------------------------------------

org 100h

mov ax, -1
mov cl, 16
sal ax, cl

;; 算数右移
;; 符号位不变
mov ax, 0xFFFF
sar ax, 1

;; 逻辑右移
;; 符号位会改变
mov ax, 0xFFFF
shr ax, 1

mov ax, 4c00h
int 21h