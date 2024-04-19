# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_19_163605) do
  create_table "albums", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "thumbnail_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "thumbnail_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists_songs", force: :cascade do |t|
    t.integer "artists_id", null: false
    t.integer "songs_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artists_id"], name: "index_artists_songs_on_artists_id"
    t.index ["songs_id"], name: "index_artists_songs_on_songs_id"
  end

  create_table "metrics", force: :cascade do |t|
    t.integer "global_view_count"
    t.integer "month_view_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.text "thumbnail_url"
    t.text "lyrics"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "albums_id", null: false
    t.integer "metrics_id", null: false
    t.index ["albums_id"], name: "index_songs_on_albums_id"
    t.index ["metrics_id"], name: "index_songs_on_metrics_id"
  end

  add_foreign_key "artists_songs", "artists", column: "artists_id"
  add_foreign_key "artists_songs", "songs", column: "songs_id"
  add_foreign_key "songs", "albums", column: "albums_id"
  add_foreign_key "songs", "metrics", column: "metrics_id"
end
