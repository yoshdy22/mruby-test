# 配列Cプログラム形式バイトコードの生成
./mrbc --verbose -Bfoo -o test_mrb.h test.rb
# バイナリ―形式（Rite形式）バイトコードの生成（mruby -b で実行）
./mrbc test.rb

# アプリケーションへの組込み
gcc -g -o test main.c -Iinclude -Llib -lmruby -lm

