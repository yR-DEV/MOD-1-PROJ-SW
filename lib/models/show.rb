class Show < ActiveRecord::Base
  belongs_to :artist
  belongs_to :venue

  def self.get_show_by_artist(single_artist)
    puts single_artist["id"]
    sql = " SELECT * FROM shows WHERE artist_id = ?;"
    show_instance_of_artist = ActiveRecord::Base.connection.execute(sql, single_artist["id"])
    puts show_instance_of_artist
  end
end
