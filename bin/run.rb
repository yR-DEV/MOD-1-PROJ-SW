require_relative '../config/environment'
require 'pry'
require 'colored'
#binding.pry

class CLI


  def self.return_or_quit
    puts "Type 'return' to return to the main menu. Type 'quit' to exit.".green.bold
    response = gets.chomp
    if response == "return"
      self.main_menu
    else
      puts "Goodbye!".green.bold
      self.quit
    end
  end

  def self.quit
    exit
  end


  def self.main_menu
    puts "Enter 'artists' to see upcoming shows they are in,\nEnter 'venues' to see venues with upcoming shows,\nEnter 'hottest show' to see the most popular artist and show location/information:".bold.green

    @@response = gets.chomp

    if @@response == "artists"
      Artist.get_all_artists
      puts "\nEnter specific artist(s) to see the show information:".bold.green
      artist_prompt = gets.chomp
      Artist.get_one_artist(artist_prompt)
      self.return_or_quit

    elsif @@response == "venues"
      Venue.get_all_venues
      puts "Enter venue to view specific show and artist:".bold.green
      venue_prompt = gets.chomp
      Venue.get_one_venue(venue_prompt)
      self.return_or_quit

    elsif @@response == "hottest show"
      most_popular = Artist.all.map do |artist|
        artist["popularity"]
      end
      most_popular = most_popular.sort!.reverse.first
      Artist.get_most_popular_artist(most_popular)
      self.return_or_quit

    else
      puts "Input not recognized. Please try typing 'artists', 'venues', or 'shows'".red.bold
      self.main_menu
    end
  end


self.main_menu
end
