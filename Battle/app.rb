require 'sinatra/base'
# require 'sinatra/reloader'

class Battle < Sinatra::Base

  

  # Sinatra::Reloader

  get '/' do
    "Testing infrastructure working!"
    erb :index
  end

  post '/welcome' do
    p params
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb(:index)
  end

  get '/form' do
    erb(:form)
    # "working?"
  end
  post '/new' do 
    @name = params[:name]
    erb(:index)
  end

#   run! if app_file == $0
 end