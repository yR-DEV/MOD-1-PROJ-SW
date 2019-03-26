class CreateCharacterMoviesJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :character_movies do |table|
      table.references :character
      table.references :movie
    end
  end
end
