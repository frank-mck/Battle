require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'


class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    @game = Game.create(@player_1, @player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
     erb :attack
  end

  get '/game-over' do
    erb :game_over
  end

  post '/attack' do
    @game.attack(@game.being_attacked)
      if @game.game_over?
        redirect '/game-over'
      else
        redirect '/attack'
      end
  end

  post '/switch-turns' do
    @game.switch_turns
    redirect('/play')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end