require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models/count.rb'

#before do
#  if Count.all.size == 0
#    Count.create(number: 0)
#  end
#end

get '/' do
  erb :index
end

get '/result' do
  @uname = params[:username]
  rnum = rand(10)
  if rnum < 6
    @result = "半吉!"
  elsif rnum < 9
    @result = "中吉!"
  else 
    @result = "大吉!"
  end
  erb :result
end