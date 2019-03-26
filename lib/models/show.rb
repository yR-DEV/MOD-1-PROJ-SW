class Show < ActiveRecord::Base
  belongs_to :artist
  belongs_to :venue

  def self.get_shows_by_artist(artist)
    sql = <<-SQL
      SELECT * FROM shows WHERE artist_id = ?
    SQL
    ActiveRecord::Base.connection.execute(sql, artist.id)
  end
end
