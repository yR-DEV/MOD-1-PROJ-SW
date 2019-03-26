class Artist < ActiveRecord::Base
  has_many :shows
  has_many :venues, through: :shows

  def self.get_artists
    sql = <<-SQL
      SELECT * FROM artists
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end

  def self.get_one_artist(artist_name)
    sql = <<-SQL
      SELECT * FROM artists where name = ?
    SQL
    ActiveRecord::Base.connection.execute(sql, artist_name)
  end
end
