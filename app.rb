require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models/history.rb'

before do
  if History.all.size == 0
    History.create(small: 0, good: 0, excellent: 0, total: 0)
  end
end

get '/' do
  erb :index
end

get '/result' do
  #index.erbのinputタグに入力された名前はどうやって取り出す？
  #取り出した値を次のresult.erbでも使うためにはどうすれば？
  
  #以下抽選機能
  #rnum = 0から9までの乱数
  rnum = rand(10)
  history = History.find(1)
  
  #rnumの値に応じてインスタンス変数@resultの値を変える
  #確率はrnumの大きさを図る部分で変更
  if rnum < 6
    @result = "小吉!"
    history.small = history.small + 1
  elsif rnum < 9
    @result = "中吉!"
    history.good = history.good + 1
  else 
    @result = "大吉!"
    history.excellent = history.excellent + 1
  end
  
  history.total = history.total + 1
  history.save
  #historyテーブルでこれまでの占い結果を管理している
  #このテーブルに入ったレコードをresult.erbで用いれば表が作れそう？
  erb :result
end