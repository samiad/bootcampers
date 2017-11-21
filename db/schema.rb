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

ActiveRecord::Schema.define(version: 20171121145445) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applies", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "mission_id"
    t.date     "accepted_at"
    t.date     "declined_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["mission_id"], name: "index_applies_on_mission_id", using: :btree
    t.index ["user_id"], name: "index_applies_on_user_id", using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "siret"
    t.string   "vat_number"
    t.string   "address"
    t.string   "activity_code"
    t.string   "website"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_companies_on_user_id", using: :btree
  end

  create_table "mission_skills", force: :cascade do |t|
    t.integer  "skill_id"
    t.integer  "mission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mission_id"], name: "index_mission_skills_on_mission_id", using: :btree
    t.index ["skill_id"], name: "index_mission_skills_on_skill_id", using: :btree
  end

  create_table "missions", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "title"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_missions_on_project_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.integer  "company_id"
    t.integer  "user_id"
    t.string   "request_title"
    t.text     "request_description"
    t.integer  "budget"
    t.date     "request_delivery_at"
    t.date     "accepted_at"
    t.string   "title"
    t.text     "description"
    t.string   "category"
    t.integer  "price"
    t.date     "agreed_delivery_at"
    t.date     "signed_off_at"
    t.date     "delivered_at"
    t.date     "scoped_at"
    t.date     "paid_off_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["company_id"], name: "index_projects_on_company_id", using: :btree
    t.index ["user_id"], name: "index_projects_on_user_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.integer  "role"
    t.text     "bio"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "applies", "missions"
  add_foreign_key "applies", "users"
  add_foreign_key "companies", "users"
  add_foreign_key "mission_skills", "missions"
  add_foreign_key "mission_skills", "skills"
  add_foreign_key "missions", "projects"
  add_foreign_key "projects", "companies"
  add_foreign_key "projects", "users"
end
