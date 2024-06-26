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

ActiveRecord::Schema.define(version: 2020_09_14_104435) do

  create_table "accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

  create_table "antonyms", force: :cascade do |t|
    t.string "antonym"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "word_id"
    t.index ["word_id"], name: "index_antonyms_on_word_id"
  end

  create_table "apis", force: :cascade do |t|
    t.string "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "account_id"
    t.index ["account_id"], name: "index_apis_on_account_id"
  end

  create_table "defs", force: :cascade do |t|
    t.string "definition"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "word_id"
    t.index ["word_id"], name: "index_defs_on_word_id"
  end

  create_table "examples", force: :cascade do |t|
    t.string "example"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "word_id"
    t.index ["word_id"], name: "index_examples_on_word_id"
  end

  create_table "synonyms", force: :cascade do |t|
    t.string "synonym"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "word_id"
    t.index ["word_id"], name: "index_synonyms_on_word_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "word"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "antonyms", "words"
  add_foreign_key "defs", "words"
  add_foreign_key "examples", "words"
  add_foreign_key "synonyms", "words"
end
