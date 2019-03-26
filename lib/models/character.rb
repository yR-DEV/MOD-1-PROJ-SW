class Character < ActiveRecord::Base
  serialize :starships
  has_many :movies, through: :character_movies
end
