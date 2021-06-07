require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  "Hello World"
end

get '/secret' do
  "hello there"
end

get '/home' do
  'Home page'
end

get '/cat' do
  erb(:index)
end