サンプルプログラムを中間言語に変換し、実行します。
中間言語への変換はmrbcコマンドを使用します。
mrbcコマンドの出力形式は２種類あります。
 △バイナリー形式（デフォルト）
   $ mrbc test.rb

 ○配列Cプログラム形式
   $ mrbc -Bfoo -o test_mrb.h test.rb

main.c で上記の中間ファイルをinputして実行します。

------------------------------
#include "mruby.h"
#include "mruby/compile.h"
#include "mruby/irep.h"

#include "test_mrb.h" // mrbcで変換したファイル

int main() {
  mrb_state *mrb = mrb_open();

  // バイトコードの読み取り 実行
  // foo は mrbc の -B オプションで与えた変数名
  mrb_load_irep(mrb, foo);

  mrb_close(mrb);
}
------------------------------

main.cのビルド
 $ gcc -Wall -g -o test main.c -Iinclude lib/libmruby.a -lm
