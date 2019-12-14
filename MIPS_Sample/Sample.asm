      .data
num:  .word  10             # a number
des:  .word  1              # to store word
      .text
      la   $t5, num         # load address of the number
      la   $t0, des
      lw   $t5, 0($t5)      # load array size
      #li   $t2, 1           # 1 is first number
      sw   $t5, 0($t0)      # F[0] = 1