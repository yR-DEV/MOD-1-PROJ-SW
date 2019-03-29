require_relative '../config/environment'
require 'pry'
require 'colored'
#binding.pry

class CLI
  def self.main_menu
    puts "Enter 'artists' to see upcoming shows they are in,\n
          Enter 'venues' to see venues with upcoming shows,\n
          Enter 'hottest show' to see the most popular artist and show location/information:\n".bold.green

    @@response = gets.chomp

    if @@response == "artists"
      Artist.get_all_artists
      puts "\nEnter specific artist(s) to see the show information:".bold.green
      artist_prompt = gets.chomp
      Artist.get_one_artist(artist_prompt)

    elsif @@response == "venues"
      Venue.get_all_venues
      puts "Enter venue to view specific show and artist:".bold.green
      venue_prompt = gets.chomp
      Venue.get_one_venue(venue_prompt)

    elsif @@response == "hottest show"
      most_popular = Artist.all.map do |artist|
        artist["popularity"]
      end
      most_popular = most_popular.sort!.reverse.first
      Artist.get_most_popular_artist(most_popular)

    else
      puts "Input not recognized. Please try artists, venues, shows"
      self.main_menu
    end

  end

self.main_menu
end


# puts "Enter artists to see upcoming shows they are in,\n
#       Enter venues to see venues with upcoming shows,\n
#       Enter hottest shows to see the most popular artist and show location/information:\n"
# response = gets.chomp

# if response == "artists"
#   Artist.get_all_artists
#   puts "\nEnter specific artist(s) to see the show information:"
#   artist_prompt = gets.chomp
#   Artist.get_one_artist(artist_prompt)
#
# elsif response == "venues"
#   Venue.get_all_venues
#   puts "Enter venue to view specific show and artist:"
#   venue_prompt = gets.chomp
#   Venue.get_one_venue(venue_prompt)
#
# elsif response == "hottest show"
#   most_popular = Artist.all.map do |artist|
#     artist["popularity"]
#   end
#   most_popular = most_popular.sort!.reverse.first
#   Artist.get_most_popular_artist(most_popular)
#
# else
#   puts "Input not recognized. Please try artists, venues, shows"
# end
