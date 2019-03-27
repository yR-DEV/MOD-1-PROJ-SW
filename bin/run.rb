require_relative '../config/environment'

require 'pry'

binding.pry


puts "Enter artists to see upcoming shows they are in,\n
      Enter venues to see venues with upcoming shows,\n
      Enter hottest shows to see the most popular artist and show location/information:\n"
response = gets.chomp

if response == "artists"
  Artist.get_all_artists

  puts "\nEnter specific artist(s) to see the show information:"
  artist_prompt = gets.chomp

  Artist.get_one_artist(artist_prompt)

elsif response == "venues"
  Venue.get_all_venues

  puts "Enter venue to view specific show and artist:"
  venue_prompt = gets.chomp

  Venue.get_one_venue(venue_prompt)

elsif response == "hottest show"
  popularity_level = []
  Artist.all.select do |artist|
    popularity_level << artist.popularity
  end
  most_popular = popularity_level.sort!.reverse.first
  Artist.all.find do |artist|
   if  artist.popularity == most_popular
    show = Show.all.find_by(artist_id: artist["id"])
    venue = Venue.all.find(show["artist_id"])
    puts "===== #{artist["name"]} ====="
    puts venue["name"]
    puts venue["date"]
    puts venue["time"]
    puts "========================="
   end
  end
else
  puts "Input not recognized. Please try artists, venues, shows"
end
