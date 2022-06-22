require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models/history.rb'

#before do
#  if Count.all.size == 0
#    Count.create(number: 0)
#  end
#end

before do
  if History.all.size == 0
    History.create(small: 0, good: 0, excellent: 0, total: 0)
  end
end

get '/' do
  erb :index
end

get '/result' do
  @uname = params[:username]
  #rnum = 0から9までの乱数
  rnum = rand(10)
  history = History.find(1)
  
  #rnumの値に応じてインスタンス変数@hisultの値を変える
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
  @history = history
  erb :result
end