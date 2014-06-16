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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140614211157) do
=======
ActiveRecord::Schema.define(version: 20140615213820) do
>>>>>>> 84aef86727a9f8443bd6ac6e992193f6ae8bc6d5

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: true do |t|
    t.string   "url"
<<<<<<< HEAD
    t.string   "headline"
    t.string   "publication"
    t.string   "extract"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
=======
    t.string   "title"
    t.string   "publication"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shared_by"
    t.text     "extract"
>>>>>>> 84aef86727a9f8443bd6ac6e992193f6ae8bc6d5
  end

  create_table "interests", force: true do |t|
    t.string   "topic"
    t.datetime "created_at"
    t.datetime "updated_at"
<<<<<<< HEAD
=======
    t.string   "url1"
    t.string   "url2"
    t.string   "url3"
>>>>>>> 84aef86727a9f8443bd6ac6e992193f6ae8bc6d5
  end

  create_table "reader_article_joins", force: true do |t|
    t.string   "reader_id"
    t.string   "article_id"
    t.string   "match_score"
    t.string   "reader_ranking"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reader_interest_joins", force: true do |t|
    t.string   "reader_id"
    t.string   "interest_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "readers", force: true do |t|
    t.string   "email",                null: false
    t.string   "crypted_password",     null: false
    t.string   "salt",                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "twitter_token"
    t.string   "twitter_token_secret"
    t.string   "facebook_token"
    t.string   "name"
    t.string   "image"
    t.string   "tagline"
    t.string   "twitter_handle"
    t.string   "facebook_uid"
  end

  add_index "readers", ["email"], name: "index_readers_on_email", unique: true, using: :btree

end
