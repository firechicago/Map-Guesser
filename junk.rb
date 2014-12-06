require 'pry'
require 'CSV'

def choose_place_name
  cities = load_list
  cities.sample
end

def load_list
	cities = []
	binding.pry
  CSV.foreach("cities_list_formatted.csv", headers: true) do |city|
  	cities << {rank: city['rank'], place: city['place'], 
  		state: city['state'], census: city['census']}
  end
  binding.pry
  cities
end



stuff = nil

stuff = choose_place_name

puts stuff