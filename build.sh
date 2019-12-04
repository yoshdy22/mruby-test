./mrbc -Bfoo -o test_mrb.h test.rb
gcc -g -o test main.c -Iinclude lib/libmruby.a -lm
