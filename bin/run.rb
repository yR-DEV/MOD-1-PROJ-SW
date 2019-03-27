require_relative '../config/environment'

require 'pry'

# binding.pry
#
# def get_all_the_artists
#   Artist.get_artists.map do |artist|
#     puts artist["name"]
#   end
# end

# def get_single_artist
#   get_all_the_artist_shows(Artist.get_one_artist[0])
# end

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


binding.pry


puts "Enter artists to see upcoming shows they are in,\n
      Enter venues to see venues with upcoming shows,\n
      Shows to see specific shows date, time, and location:\n"
response = gets.chomp
if response == "artists"
  Artist.all.select do |artist|
    puts artist["name"]
    artist
  end

  puts "\nEnter specific artist(s) to see the show information:"
  artist_prompt = gets.chomp
  Artist.all.find do |artist|
    if artist["name"] == artist_prompt
      show = Show.all.find_by(artist_id: artist["id"])
      venue = Venue.find(show["venue_id"])
      puts venue["name"]
      puts venue["date"]
      puts venue["time"]
    end
  end
elsif response == "venues"
  get_all_the_venues()
elsif response == "shows"
  get_all_the_artist_shows("this should come out in terminal")
else
  puts "Input not recognized. Please try artists, venues, shows"
end
