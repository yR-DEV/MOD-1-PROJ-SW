class Venue < ActiveRecord::Base
  has_many :shows
  has_many :artists, through: :shows

  def self.get_venues
    sql = <<-SQL
      SELECT * FROM venues
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end

  def self.get_all_venue_shows(venue)
    sql = <<-SQL
      SELECT * FROM venues WHERE id = ?
    SQL
    ActiveRecord::Base.connection.execute(sql, venue.venue_id)
  end
end
