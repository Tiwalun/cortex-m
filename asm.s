  .section .text.__bkpt
  .global __bkpt
  .size __bkpt, . - __bkpt
  .thumb_func
__bkpt:
  bkpt
  bx lr

  .section .text.__control_r
  .global __control_r
  .size __control_r, . - __control_r
  .thumb_func
__control_r:
  mrs r0, CONTROL
  bx lr

  .section .text.__control_w
  .global __control_w
  .size __control_w, . - __control_w
  .thumb_func
__control_w:
  msr CONTROL, r0
  bx lr


  .section .text.__cpsid
  .global __cpsid
  .size __cpsid, . - __cpsid
  .thumb_func
__cpsid:
  cpsid i
  bx lr

  .section .text.__cpsie
  .global __cpsie
  .size __cpsie, . - __cpsie
  .thumb_func
__cpsie:
  cpsie i
  bx lr

  .section .text.__delay
  .global __delay
  .size __delay, . - __delay
  .syntax unified
  .thumb_func
__delay:
1:
  nop
  subs r0, #1
  bne 1b  // Branch to 1 instead of __delay does not generate R_ARM_THM_JUMP8 relocation, which breaks linking on the thumbv6m-none-eabi target
  bx lr

  .section .text.__dmb
  .global __dmb
  .size __dmb, . - __dmb
  .thumb_func
__dmb:
  dmb 0xF
  bx lr

  .section .text.__dsb
  .global __dsb
  .size __dsb, . - __dsb
  .thumb_func
__dsb:
  dsb 0xF
  bx lr

  .section .text.__isb
  .global __isb
  .size __isb, . - __isb
  .thumb_func
__isb:
  isb 0xF
  bx lr

  .section .text.__msp_r
  .global __msp_r
  .size __msp_r, . - __msp_r
  .thumb_func
__msp_r:
  mrs r0, MSP
  bx lr

  .section .text.__msp_w
  .global __msp_w
  .size __msp_w, . - __msp_w
  .thumb_func
__msp_w:
  msr MSP, r0
  bx lr

  .section .text.__nop
  .global __nop
  .size __nop, . - __nop
  .thumb_func
__nop:
  bx lr

  .section .text.__primask
  .global __primask
  .size __primask, . - __primask
  .thumb_func
__primask:
  mrs r0, PRIMASK
  bx lr

  .section .text.__psp_r
  .global __psp_r
  .size __psp_r, . - __psp_r
  .thumb_func
__psp_r:
  mrs r0, PSP
  bx lr

  .section .text.__psp_w
  .global __psp_w
  .size __psp_w, . - __psp_w
  .thumb_func
__psp_w:
  msr PSP, r0
  bx lr

  .section .text.__sev
  .global __sev
  .size __sev, . - __sev
  .thumb_func
__sev:
  sev
  bx lr


  .section .text.__udf
  .global __udf
  .size __udf, . - __udf
  .thumb_func
__udf:
  udf

  .section .text.__wfe
  .global __wfe
  .size __wfe, . - __wfe
  .thumb_func
__wfe:
  wfe
  bx lr


  .section .text.__wfi
  .global __wfi
  .size __wfi, . - __wfi
  .thumb_func
__wfi:
  wfi
  bx lr
