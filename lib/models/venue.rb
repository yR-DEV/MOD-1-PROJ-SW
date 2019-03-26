class Venue < ActiveRecord::Base
  has_many :shows
  has_many :artists, through: :shows

  def self.get_venues
    sql = <<-SQL
      SELECT * FROM venues
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end
end
