# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190326013248) do

  create_table "character_movies", force: :cascade do |t|
    t.integer "character_id"
    t.integer "movie_id"
    t.index ["character_id"], name: "index_character_movies_on_character_id"
    t.index ["movie_id"], name: "index_character_movies_on_movie_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string  "name"
    t.integer "height"
    t.string  "species"
    t.text    "starships"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.text   "characters"
    t.text   "starships"
  end

end
