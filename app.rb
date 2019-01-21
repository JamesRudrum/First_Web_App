require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'

get '/' do
  "Hello World!!!"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  @age = ["2", "3", "4"].sample
  erb(:index)
end

get '/named-cat' do
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end
