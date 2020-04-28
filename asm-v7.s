  .section .text.__basepri_max
  .global __basepri_max
  .size __basepri_max, . - __basepri_max
  .thumb_func
__basepri_max:
  msr BASEPRI_MAX, r0
  bx lr

  .section .text.__basepri_r
  .global __basepri_r
  .size __basepri_r, . - __basepri_r
  .thumb_func
__basepri_r:
  mrs r0, BASEPRI
  bx lr

  .section .text.__basepri_w
  .global __basepri_w
  .size __basepri_w, . - __basepri_w
  .thumb_func
__basepri_w:
  msr BASEPRI, r0
  bx lr

  .section .text.__faultmask
  .global __faultmask
  .size __faultmask, . - __faultmask
  .thumb_func
__faultmask:
  mrs r0, FAULTMASK
  bx lr
