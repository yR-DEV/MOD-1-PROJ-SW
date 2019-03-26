class CreateVenuesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |table|
      table.string :artist
      table.string :date_of_show
      table.string :time_of_show
    end
  end
end
