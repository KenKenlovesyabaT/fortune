# fortune

## はじめに
チェックワークへようこそ！

おみくじアプリを発展させましょう！


## 準備
#### 1.素材のダウンロード、環境構築
ダウンロード時点ではおみくじアプリの基礎部分のみ実装した状態になっています。

Cloud 9のターミナルに`cd ~/environment`と入力して`~/environment`へ移動しましょう。

![page1](https://github.com/KenKenlovesyabaT/fortune/blob/images/1.png?raw=true)

ターミナルに以下のコマンドを入力しましょう。

`git clone https://github.com/KenKenlovesyabaT/fortune.git`

![page2](https://github.com/KenKenlovesyabaT/fortune/blob/images/2.png?raw=true)

ターミナルに`cd fortune`と入力してfortuneフォルダへ移動しましょう。

![page3](https://github.com/KenKenlovesyabaT/fortune/blob/images/3.png?raw=true)

#### 2.コマンドの入力
ターミナルに以下のコマンドを入力しましょう。

`bundle install`

#### 3.データベースの初期化

続いて以下のコマンドを入力し、既にあるマイグレーションファイルを基にテーブルを作成しましょう。

`rake db:migrate:reset`

#### 4.アプリの起動

いつものコマンド(`ruby app.rb`)でアプリを起動しましょう。

下図のような画面が開けたら準備完了です！
![top-page](https://github.com/KenKenlovesyabaT/fortune/blob/images/top.png?raw=true)

## タスク一覧
下に本チェックワークで取り組んでほしいタスクが一覧で表示してあります。

これらのタスクは全てに取り組む必要はありません！自分がやりたいもの、できるものから順番に取り組んでいきましょう！

#### レベル1
・"送信ボタンを"占う"ボタンに変えよう！

・トップページに見出しをつけよう！
Point:見出しを中央揃えにしたい場合はclass属性に`text-center`を付与しよう

・"最初にもどる"ボタンを実装しよう！
#### レベル2
・「〇〇さんの運勢は...」とトップページで入力した名前を結果ページで表示されるようにしよう！

・占いの結果に応じて結果を囲う円の色が変化するようにしよう！

Point:小吉：`#009688` 中吉：`#d36015` 大吉：`#dc143c` に設定しよう

#### レベル3
・小吉、中吉、大吉の出た回数と占った回数がどのように管理されているのか理解しよう！

・上のデータを用いて下図のような表が出るようにしよう！
#### レベル4
・オリジナルの創意工夫をいれよう！

Point：非同期処理(リロードすることなく占い結果や表を更新)、デザインの更新などに取り組んでみよう！

#### 完成図

レベル3までのタスクの実装を終えると下の画像のようになるはずです！

こちらのスクリーンショットを参考に実装を進めましょう！

![page4](https://github.com/KenKenlovesyabaT/fortune/blob/images/4.png?raw=true)

![page5](https://github.com/KenKenlovesyabaT/fortune/blob/images/5.png?raw=true)