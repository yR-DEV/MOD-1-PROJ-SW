class Movie < ActiveRecord::Base
  serialize :characters
  serialize :starships #not sure if this syntax is correct? Or if it will work...
  has_many :characters, through: :character_movies
end
