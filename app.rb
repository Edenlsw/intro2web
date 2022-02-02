require "sinatra"
require 'sinatra/reloader' if development?

get '/' do
  "Hello World"
end

get '/test' do
  "Testing"
end

get '/secret' do
  "Shh"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

post '/named-cat' do
  @name = params[:name]
  puts @name
  erb(:index)
end

get '/cat-form' do 
  erb(:cat_form)
end 

