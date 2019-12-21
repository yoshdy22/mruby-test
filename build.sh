./mrbc --verbose -Bfoo -o test_mrb.h test.rb
./mrbc test.rb
gcc -g -o test main.c -Iinclude lib/libmruby.a -lm
