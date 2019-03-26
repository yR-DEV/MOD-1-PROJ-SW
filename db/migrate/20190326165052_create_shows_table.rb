class CreateShowsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |table|
      table.references :venue
      table.references :artist 
    end
  end
end
