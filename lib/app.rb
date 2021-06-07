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
  "<div>
  <img class = 'cat' src = 'https://i.imgur.com/jFaSxym.png'>
  </div>

  <style>
  .cat {
    border: 3px dashed red
  }
  </style>
  "
end