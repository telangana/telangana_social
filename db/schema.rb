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

ActiveRecord::Schema.define(version: 20140408141020) do

  create_table "constitutions", force: true do |t|
    t.integer  "c_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cons_voter_all"
    t.string   "cons_voters_women"
    t.string   "cons_voters_men"
    t.integer  "mp_cons_id"
    t.integer  "district_id"
  end

  create_table "districts", force: true do |t|
    t.integer  "d_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fb_tokens", force: true do |t|
    t.string   "name"
    t.string   "access_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "constitution_id"
  end

  create_table "mlas", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mlas", ["email"], name: "index_mlas_on_email", unique: true, using: :btree
  add_index "mlas", ["reset_password_token"], name: "index_mlas_on_reset_password_token", unique: true, using: :btree

  create_table "mps", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mps", ["email"], name: "index_mps_on_email", unique: true, using: :btree
  add_index "mps", ["reset_password_token"], name: "index_mps_on_reset_password_token", unique: true, using: :btree

  create_table "pages", force: true do |t|
    t.string   "name"
    t.string   "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "constitution_id"
  end

  create_table "politicians", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "politicians", ["email"], name: "index_politicians_on_email", unique: true, using: :btree
  add_index "politicians", ["reset_password_token"], name: "index_politicians_on_reset_password_token", unique: true, using: :btree

  create_table "slogans", force: true do |t|
    t.string   "name"
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_profiles", force: true do |t|
    t.string   "name"
    t.string   "fbprofile_id"
    t.integer  "constitution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "constitution_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "villages", force: true do |t|
    t.string   "name"
    t.integer  "constitution_id"
    t.string   "about"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
