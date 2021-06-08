require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  
end

get '/secret' do
  "hello there"
end

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
  @name = params[:name]
  erb(:index)
end