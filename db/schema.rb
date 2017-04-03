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

ActiveRecord::Schema.define(version: 20170403075919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "certifications", force: :cascade do |t|
    t.string   "title"
    t.string   "year"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_certifications_on_resume_id", using: :btree
  end

  create_table "companies", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.string   "description"
    t.string   "start_date"
    t.string   "end_date"
    t.integer  "resume_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["resume_id"], name: "index_companies_on_resume_id", using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "languages", force: :cascade do |t|
    t.string   "title"
    t.integer  "resume_id"
    t.string   "proficiency"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["resume_id"], name: "index_languages_on_resume_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "full_name"
    t.string   "email"
    t.datetime "dob"
    t.string   "phone"
    t.string   "linkedin_url"
    t.string   "blog_url"
    t.string   "title"
    t.string   "description"
    t.integer  "resume_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["resume_id"], name: "index_profiles_on_resume_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "url"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "resume_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["resume_id"], name: "index_projects_on_resume_id", using: :btree
  end

  create_table "qualifications", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "school_name"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "resume_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["resume_id"], name: "index_qualifications_on_resume_id", using: :btree
  end

  create_table "resumes", force: :cascade do |t|
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_resumes_on_slug", unique: true, using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.string   "title"
    t.string   "exp_level"
    t.integer  "resume_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["resume_id"], name: "index_skills_on_resume_id", using: :btree
  end

  add_foreign_key "certifications", "resumes"
  add_foreign_key "companies", "resumes"
  add_foreign_key "languages", "resumes"
  add_foreign_key "projects", "resumes"
  add_foreign_key "qualifications", "resumes"
  add_foreign_key "skills", "resumes"
end
