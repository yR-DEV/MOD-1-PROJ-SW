class CreateShowsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |table|
      table.references :venues
      table.references :artists 
    end
  end
end
