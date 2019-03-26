class CreateVenuesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |table|
      table.string :name
      table.string :date
      table.string :time
    end
  end
end
