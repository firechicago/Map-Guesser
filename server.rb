require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'sinatra/activerecord'
require 'pry'

configure :development, :test do
  require 'pry'
end

def choose_place_name
  'Somerville, Massachusetts'
end

get '/' do
  @place_name = choose_place_name
  erb :'index'
end

get '/guess' do
  # binding.pry
  'You just guessed'
end
