class CreateMoviesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |table|
      table.string :title
      table.array :characters
      table.array :starships
    end
  end
end
