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
        puts "\n=====SHOW======".bold.yellow
        puts venue["name"].red
        puts venue["date"].red
        puts venue["time"].red
        puts "==============".bold.yellow
      end
    end
  end

  def self.get_most_popular_artist(most_popular)
    self.all.find do |artist|
      if artist.popularity == most_popular
        show = Show.all.find_by(artist_id: artist["id"])
        venue = Venue.all.find(show["artist_id"])
        puts "\n===== #{artist["name"]} =====".bold.yellow
        puts venue["name"].red
        puts venue["date"].red
        puts venue["time"].red
        puts "==================================".bold.yellow
     end
   end
 end
end
