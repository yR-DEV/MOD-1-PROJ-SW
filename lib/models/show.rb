class Show < ActiveRecord::Base
  belongs_to :artist
  belongs_to :venue

  def self.get_shows
    sql = <<-SQL
      SELECT * FROM shows
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end
end
