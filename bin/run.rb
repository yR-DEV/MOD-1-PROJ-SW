require_relative '../config/environment'

def get_shows
  puts Artist.get_artists
end

def get_venues
  puts Venue.get_venues
end

def get_shows
  puts Show.get_shows
end

puts "Enter artists to see upcoming shows they are in:"
response = gets.chomp
if response == "artists"
  get_shows()
elsif response == "venues"
  get_venues()
elsif response == "shows"
  get_shows()
end
