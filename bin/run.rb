require_relative '../config/environment'

require 'pry'

# binding.pry

def get_all_the_artists
  Artist.get_artists.map do |artist|
    puts artist["name"]
  end
end

def get_single_artist
  get_all_the_artist_shows(Artist.get_one_artist[0])
end

def get_all_the_venues
  Venue.get_venues.map do |venue|
    puts venue["name"]
  end
end

def get_single_venue(venue)
  Venue.get_all_the_venue_shows(venu)
end

def get_all_the_artist_shows(artist)
  Show.get_shows_by_artist(artist)
end





puts "Enter artists to see upcoming shows they are in:"
response = gets.chomp
if response == "artists"
  Artist.get_all_artists()
elsif response == "venues"
  get_all_the_venues()
elsif response == "shows"
  get_all_the_artist_shows("this should come out in terminal")
end
