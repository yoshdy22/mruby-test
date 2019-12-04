#include "mruby.h"
#include "mruby/compile.h"
#include "mruby/irep.h"

#include "test_mrb.h" // mrbcで変換したファイル

int main() {
  // 実行環境の生成
  mrb_state *mrb = mrb_open();

  // バイトコードの読み取り 実行
  mrb_load_irep(mrb, foo); // foo は mrbc の -B オプションで与えた変数名

  mrb_close(mrb);
}
