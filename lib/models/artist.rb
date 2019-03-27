class Artist < ActiveRecord::Base
  has_many :shows
  has_many :venues, through: :shows

  def self.get_all_artists
    self.all.select do |artist|
      puts artist["name"]
    end
  end

  def self.get_one_artist(artist_prompt)
    self.all.find do |artist|
      if artist["name"] == artist_prompt
        show = Show.all.find_by(artist_id: artist["id"])
        venue = Venue.find(show["venue_id"])
        puts "=====SHOW======"
        puts venue["name"]
        puts venue["date"]
        puts venue["time"]
        puts "=============="
      end
    end
  end
end
