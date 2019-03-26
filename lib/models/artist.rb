class Artist < ActiveRecord::Base
  has_many :shows
  has_many :venues, through: :shows

  def self.get_artists
    sql = <<-SQL
      SELECT * FROM artists
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end
end
