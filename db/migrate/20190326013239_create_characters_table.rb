class CreateCharactersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |table|
      table.string :name
      table.integer :height
      table.string :species
      table.text :starships
    end
  end
end
