require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2= Player.new(params[:player2])
    redirect '/play'
  end
  
  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    erb :play
  end
  
  post '/attack' do
    $player2.receive_damage
    erb :attack
  end
  
  run! if app_file == $0
end