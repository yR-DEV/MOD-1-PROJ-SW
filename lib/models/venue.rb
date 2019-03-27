class Venue < ActiveRecord::Base
  has_many :shows
  has_many :artists, through: :shows

  def self.get_all_venues
    self.all.select do |venue|
      puts venue["name"]
    end
  end

  def self.get_one_venue(venue_prompt)
    self.all.find do |venue|
      if venue["name"] == venue_prompt
        show = Show.all.find_by(venue_id: venue["id"])
        artist = Artist.find(show["artist_id"])
        puts "\n====VENUE======".bold.yellow
        puts artist["name"].red
        puts venue["date"].red
        puts venue["time"].red
        puts "===============".bold.yellow
      end
    end
  end
end
