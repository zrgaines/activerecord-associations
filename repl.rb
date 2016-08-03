require 'active_record'
require 'pg'
require 'pry'

require_relative 'models/movie.rb'
require_relative 'models/theater.rb'
require_relative 'models/theater_movie.rb'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql',
  database: 'funmovies',
  host:     'localhost'
)
Movie.create(title: "Ghostbusters", rating: 20)
Movie.create(title: "Pulp Fiction", rating: 12)
Movie.create(title: "2001: A Space Odyssey", rating: 100)
Movie.create(title: "Interstellar", rating: 1)
Movie.create(title: "Ruby on Rails", rating: 100)

binding.pry

puts "Goodbye!"
