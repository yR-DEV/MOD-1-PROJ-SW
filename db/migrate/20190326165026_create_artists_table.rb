class CreateArtistsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |table|
      table.string :name
      table.integer :popularity
      table.string :venue
    end
  end
end
