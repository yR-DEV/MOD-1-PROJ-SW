require_relative '../config/environment'



#puts "HELLO WORLD"
# def puts_shows(shows)
#   shows.each do |show|
#     puts show
#   end
# end

def get_shows
  puts Artist.get_artists
end

def get_venues
  puts Venue.get_venues
end

puts "Enter artists to see upcoming shows they are in:"
response = gets.chomp
  if response == "artists"
    get_shows()
  elsif response == "venues"
    get_venues()
  end
