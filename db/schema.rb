# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_05_193133) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "liked_movies", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "movie_id", null: false
    t.boolean "watched"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_liked_movies_on_movie_id"
    t.index ["user_id"], name: "index_liked_movies_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "netflixid"
    t.string "title"
    t.string "image"
    t.string "rating"
    t.string "media"
    t.string "runtime"
    t.string "largeimage"
    t.string "imdbid"
    t.integer "priority"
    t.string "genre"
    t.string "year"
    t.string "released"
    t.string "rated"
    t.string "director"
    t.string "writer"
    t.string "actors"
    t.string "plot"
    t.string "language"
    t.string "country"
    t.string "awards"
    t.string "poster"
    t.string "imdbRating"
    t.string "imdbVotes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "bio"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watched_movies", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "movie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["movie_id"], name: "index_watched_movies_on_movie_id"
    t.index ["user_id"], name: "index_watched_movies_on_user_id"
  end

  add_foreign_key "liked_movies", "movies"
  add_foreign_key "liked_movies", "users"
  add_foreign_key "watched_movies", "movies"
  add_foreign_key "watched_movies", "users"
end
