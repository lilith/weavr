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

ActiveRecord::Schema.define(version: 20140721145116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "extra_choices", force: true do |t|
    t.integer  "mod_id"
    t.string   "title"
    t.integer  "choice_location_id"
    t.integer  "destination_id"
    t.float    "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "extra_choices", ["choice_location_id"], name: "index_extra_choices_on_choice_location_id", using: :btree
  add_index "extra_choices", ["destination_id"], name: "index_extra_choices_on_destination_id", using: :btree
  add_index "extra_choices", ["mod_id"], name: "index_extra_choices_on_mod_id", using: :btree

  create_table "handlers", force: true do |t|
    t.integer  "mod_id"
    t.integer  "hook_id"
    t.text     "code"
    t.float    "priority"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "handlers", ["hook_id"], name: "index_handlers_on_hook_id", using: :btree
  add_index "handlers", ["mod_id"], name: "index_handlers_on_mod_id", using: :btree

  create_table "hooks", force: true do |t|
    t.integer  "mod_id"
    t.string   "name"
    t.string   "kind"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hooks", ["mod_id"], name: "index_hooks_on_mod_id", using: :btree

  create_table "incarnations", force: true do |t|
    t.integer  "profile_id"
    t.string   "kind"
    t.string   "title"
    t.string   "name"
    t.string   "gender"
    t.string   "other_gender"
    t.integer  "gold"
    t.integer  "gems"
    t.integer  "hitpoints"
    t.integer  "max_hitpoints"
    t.integer  "mana"
    t.integer  "max_mana"
    t.integer  "experience"
    t.integer  "level"
    t.integer  "turns"
    t.binary   "coroutine"
    t.text     "display"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "incarnations", ["profile_id"], name: "index_incarnations_on_profile_id", using: :btree

  create_table "mods", force: true do |t|
    t.uuid     "pid"
    t.integer  "parent_id"
    t.string   "name"
    t.text     "title"
    t.text     "description"
    t.integer  "creator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "prose"
    t.text     "code"
  end

  add_index "mods", ["creator_id"], name: "index_mods_on_creator_id", using: :btree
  add_index "mods", ["parent_id"], name: "index_mods_on_parent_id", using: :btree

  create_table "profiles", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.uuid     "pid"
    t.integer  "active_incarnaton_id"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role"
    t.date     "birthdate"
    t.integer  "last_profile_id"
  end

end
