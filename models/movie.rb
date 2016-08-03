class Movie < ActiveRecord::Base
   has_many :theater_movies
   has_many :theaters, through: :theater_movies
   validates :title, :rating, presence: true
   scope :shit, -> { where('rating <= 50') }
end