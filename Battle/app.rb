require 'sinatra/base'
# require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do 
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play
  end

  get '/attack' do 
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :attack


  end

  








  # post '/new' do 
  #   # @player1 = params[:player1]
  #   # @player2 = params[:player2]
  #   @name = params[:name]
  #   erb(:index)
  # end

  run! if app_file == $0
 end