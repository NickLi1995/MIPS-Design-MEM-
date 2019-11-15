|op|rs|rt|immediate|code|comment|Value|
|:-:|:-:|:-:|:-:|:-:|:-:|---|
|100011|01101|01101|0000000000000000|lw   $t5, 0($t5)||12|
|101011|01000|01010|0000000000000000|sw   $t2, 0($t0)|# F[0] = 1|save 1 to memory268500992|
|101011|01000|01010|0000000000000100|sw   $t2, 4($t0)|# F[1] = F[0] = 1|save 1 to memory268500992 Offset = 4|
|100011|01000|01011|0000000000000000|lw   $t3, 0($t0)|# Get value from array F[n]|get value 1 from memory268500992|
|100011|01000|01100|0000000000000100|lw   $t4, 4($t0)|# Get value from array F[n+1]|get value 1 from memory268500992 offset = 4|
|101011|01000|01010|0000000000001000|sw   $t2, 8($t0)|# Store F[n+2] = F[n] + F[n+1] in array|save value 2 to get value 1 from memory268500992 offset = 8|
||||0x21080004|Addi $t0, $t0, 4|shift $t0 to next array address|memory=268500992+4|
|100011|01000|00100|0000000000000000|lw   $a0, 0($t0)|# load fibonacci number for syscall||

268500992 = 10010000H