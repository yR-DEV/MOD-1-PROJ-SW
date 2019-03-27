class Artist < ActiveRecord::Base
  has_many :shows
  has_many :venues, through: :shows

#   def self.get_artists
#     sql = <<-SQL
#       SELECT * FROM artists
#     SQL
#     ActiveRecord::Base.connection.execute(sql)
#   end
#
#   def self.get_all_artists
#     get_artists.map do |artist|
#       puts artist["name"]
#     end
#   end
#
#   def self.get_one_artist_show(artist_prompt)
#     single_artist = get_artists.map {|artist| artist if artist["name"] == artist_prompt}
#     # puts single_artist[2]
#     Show.get_show_by_artist(single_artist[2])
end
