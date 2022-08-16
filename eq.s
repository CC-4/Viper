  .globl  def_main
  .data
  .align  2
bool_const0:
  .word  0
bool_const1:
  .word  1
str_const2:
  .string  ""
str_const1:
  .string  "hola"
str_const0:
  .string  "adios"
  .align  2
int_const1:
  .word  0
int_const0:
  .word  2
  .text
def_main:
  addi  sp sp -8
  sw    fp 8(sp)
  sw    ra 4(sp)
  addi  fp sp 4
  la    a0 int_const0
  lw    a0 0(a0)
  sw    a0 0(sp)
  addi  sp sp -4
  la    a0 int_const0
  lw    a0 0(a0)
  mv    t1 a0
  lw    t2 4(sp)
  addi  sp sp 4
  la    a0 bool_const1
  lw    a0 0(a0)
  beq   t2 t1 label0
  la    a0 bool_const0
  lw    a0 0(a0)
label0:
  sw    a0 0(sp)
  addi  sp sp -4
  jal   def_println_bool
  la    a0 bool_const1
  lw    a0 0(a0)
  sw    a0 0(sp)
  addi  sp sp -4
  la    a0 bool_const0
  lw    a0 0(a0)
  mv    t1 a0
  lw    t2 4(sp)
  addi  sp sp 4
  la    a0 bool_const1
  lw    a0 0(a0)
  beq   t2 t1 label1
  la    a0 bool_const0
  lw    a0 0(a0)
label1:
  sw    a0 0(sp)
  addi  sp sp -4
  jal   def_println_bool
  la    a0 bool_const1
  lw    a0 0(a0)
  sw    a0 0(sp)
  addi  sp sp -4
  la    a0 bool_const1
  lw    a0 0(a0)
  mv    t1 a0
  lw    t2 4(sp)
  addi  sp sp 4
  la    a0 bool_const1
  lw    a0 0(a0)
  beq   t2 t1 label2
  la    a0 bool_const0
  lw    a0 0(a0)
label2:
  sw    a0 0(sp)
  addi  sp sp -4
  jal   def_println_bool
  la    a0 str_const0
  sw    a0 0(sp)
  addi  sp sp -4
  la    a0 str_const0
  mv    t1 a0
  lw    t2 4(sp)
  addi  sp sp 4
  la    a0 bool_const1
  lw    a0 0(a0)
  beq   t2 t1 label3
  la    a0 bool_const0
  lw    a0 0(a0)
label3:
  sw    a0 0(sp)
  addi  sp sp -4
  jal   def_println_bool
  la    a0 str_const0
  sw    a0 0(sp)
  addi  sp sp -4
  la    a0 str_const1
  mv    t1 a0
  lw    t2 4(sp)
  addi  sp sp 4
  la    a0 bool_const1
  lw    a0 0(a0)
  beq   t2 t1 label4
  la    a0 bool_const0
  lw    a0 0(a0)
label4:
  sw    a0 0(sp)
  addi  sp sp -4
  jal   def_println_bool
  la    a0 int_const1
  lw    a0 0(a0)
  lw    fp 8(sp)
  lw    ra 4(sp)
  addi  sp sp 8
  ret   
