
;;----------------------------------------------------------------------
;; shift-1.asm
;;
;; 移位操作实验(1)
;; 逻辑左移和算数左移的等价
;; 均采用逻辑左移(SHL)的机器码
;;----------------------------------------------------------------------

org 100h

mov ax, 1
sar ax, 1
sal ax, 1
shr ax, 1
shl ax, 1

;; 移位超过1位的,必须放在CL寄存器中
mov ax, 4
mov cl, 2
sar ax, cl
sal ax, cl ;; SAL的机器码采用的是SHL的,因为两者功能等一致
shr ax, cl
shl ax, cl

;; 虽然nasm没有对此报错,但是实际运行的时候
;; 以下代码会有问题,被识别成DB C1
sar ax, 2
sal ax, 2
shr ax, 2
shl ax, 2



mov ax, 4c00h
int 21h