# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140329180134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: true do |t|
    t.string  "name"
    t.string  "photo_url"
    t.integer "enemy_id"
    t.string  "skill"
  end

  create_table "characters_levels", force: true do |t|
    t.integer "characters_id"
    t.integer "levels_id"
  end

  create_table "characters_users", force: true do |t|
    t.integer "characters_id"
    t.integer "users_id"
  end

  create_table "enemies", force: true do |t|
    t.string "name"
    t.string "photo_url"
  end

  create_table "friendships", force: true do |t|
    t.integer "users_id"
    t.integer "friend_id"
  end

  create_table "games", force: true do |t|
    t.string  "name"
    t.string  "photo_url"
    t.integer "points"
  end

  create_table "games_levels", force: true do |t|
    t.integer "games_id"
    t.integer "levels_id"
  end

  create_table "games_users", force: true do |t|
    t.integer "games_id"
    t.integer "users_id"
  end

  create_table "levels", force: true do |t|
    t.string "name"
  end

  create_table "users", force: true do |t|
    t.string  "username"
    t.string  "email"
    t.string  "password_digest"
    t.integer "character_id"
    t.string  "photo_url"
    t.integer "time_played"
    t.integer "levels_id"
  end

end
