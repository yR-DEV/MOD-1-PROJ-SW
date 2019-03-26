class CreateArtistsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |table|
      table.string :name
      table.float :popularity
      table.string :venue
    end
  end
end
