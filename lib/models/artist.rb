class Artist < ActiveRecord::Base
  has_many :shows
  has_many :venues, through: :shows

  def self.get_all_artists
    self.all.select do |artist|
      puts artist["name"]
    end
  end

  def self.get_one_artist(artist_prompt, type)
    self.all.find do |artist|
      if artist["name"] == artist_prompt
        show = Show.all.find_by(artist_id: artist["id"])
        venue = Venue.find(show["venue_id"])
        if type =="show"
          puts "\n=====SHOW======"
          puts venue["name"]
          puts venue["date"]
          puts venue["time"]
          puts "=============="
        end
      end
    end
  end

  def self.get_most_popular_artist(most_popular)
    self.all.find do |artist|
      if artist.popularity == most_popular
        show = Show.all.find_by(artist_id: artist["id"])
        venue = Venue.all.find(show["artist_id"])
        puts "\n===== #{artist["name"]} ====="
        puts venue["name"]
        puts venue["date"]
        puts venue["time"]
        puts "========================="
     end
   end
 end
end
