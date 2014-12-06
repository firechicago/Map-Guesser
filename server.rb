require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'sinatra/activerecord'
require 'pry'
require 'openssl'
require 'geokit'

configure :development, :test do
  require 'pry'
end

# holder for place to compare to
def choose_place_name
  'Somerville, Massachusetts'
end

# compares the distance between to lat-long points and returns miles between
def compare_locations (user_select, comp_select)
	puts "Your guess is #{user_select.distance_to(comp_select)} mile(s) off"
end

# assumes location is a physical address, and will return the lat-long of the location passed in
def get_lat_long (location)
		Geokit::Geocoders::GoogleGeocoder.geocode '#{location}'
end



get '/' do
  @place_name = choose_place_name
  @place_name_ll = get_lat_long(@place_name)
  erb :'index'
end


get '/guess' do
  # binding.pry
  'You just guessed'
end
