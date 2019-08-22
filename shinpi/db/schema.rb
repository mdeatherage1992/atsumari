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

ActiveRecord::Schema.define(version: 2019_02_17_141316) do

  create_table "activities", force: :cascade do |t|
    t.boolean "buy", default: false
    t.boolean "sell", default: false
    t.boolean "wager", default: false
    t.integer "wager_size", default: 0
    t.datetime "wager_contract_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "trading", default: false
    t.string "principal"
    t.decimal "price"
    t.integer "room_id"
    t.integer "user_id"
    t.index ["room_id"], name: "index_activities_on_room_id"
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "room_id"
    t.integer "user_id"
    t.index ["room_id"], name: "index_posts_on_room_id"
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "privileges", force: :cascade do |t|
    t.integer "room_id"
    t.integer "user_id"
    t.boolean "public", default: true
    t.boolean "owner", default: false
    t.boolean "allowed", default: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "bio"
    t.integer "experience_in_industry"
    t.string "industry"
    t.integer "total_spectators"
    t.decimal "total_confirmed_revenue"
    t.string "github"
    t.string "linkedin"
    t.string "seeking_alpha"
    t.string "website"
    t.integer "user_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_type"
    t.string "thumbnail_text"
    t.text "thumbnail_img"
    t.string "name"
    t.integer "head_count"
    t.decimal "room_price"
    t.decimal "confirmed_revenue"
    t.string "description"
    t.datetime "last_post"
    t.string "owner_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_rooms_on_user_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "post_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_taggings_on_post_id"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "industry"
    t.string "experience_in_industry"
    t.string "github"
    t.string "linkedin"
    t.string "s_a"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "locked_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
