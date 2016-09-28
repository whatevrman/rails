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

ActiveRecord::Schema.define(version: 20150501170949) do

  create_table "addresses", force: :cascade do |t|
    t.string "line1"
    t.string "city"
    t.string "state"
    t.string "zip"
  end

  create_table "emails", force: :cascade do |t|
    t.string "email"
  end

  create_table "instructors", force: :cascade do |t|
    t.integer "pid"
    t.float   "fhours"
    t.float   "ihours"
    t.date    "cert_issue"
    t.date    "cert_exp"
    t.float   "r44hours"
    t.float   "r22hours"
    t.float   "ensthours"
    t.date    "lastflightcheck"
    t.date    "enddate"
    t.string  "username"
  end

  create_table "meetings", force: :cascade do |t|
    t.integer  "ipid"
    t.integer  "spid"
    t.date     "date"
    t.time     "time"
    t.text     "remarks"
    t.boolean  "read",       default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "ph_number"
  end

  create_table "requests", force: :cascade do |t|
    t.integer "spid"
    t.integer "ipid"
    t.string  "task_type"
    t.date    "date"
    t.string  "time"
    t.string  "remarks"
    t.boolean "approval"
  end

  create_table "schools", force: :cascade do |t|
    t.string  "name"
    t.integer "faa_id"
    t.string  "website"
    t.integer "years"
    t.boolean "tp141",      default: false
    t.boolean "tp61",       default: false
    t.boolean "hpp",        default: false
    t.boolean "hcp",        default: false
    t.boolean "hcfi",       default: false
    t.boolean "atp",        default: false
    t.boolean "hcfii",      default: false
    t.boolean "hll",        default: false
    t.boolean "disable",    default: false
    t.date    "dis_date"
    t.string  "admin"
    t.string  "phone"
    t.string  "line1"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.string  "eperson"
    t.string  "ephone"
    t.string  "email"
    t.string  "adminphone"
    t.string  "cperson"
    t.string  "cphone"
  end

  create_table "students", force: :cascade do |t|
    t.integer "pid"
    t.string  "medcert"
    t.boolean "med1"
    t.boolean "med2"
    t.date    "meddate"
    t.string  "desirecert"
    t.boolean "approval"
    t.integer "ipid"
    t.string  "username"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "spid"
    t.string  "end_model"
    t.date    "end_date"
    t.integer "ipid"
    t.integer "flnumber"
    t.date    "fldate"
    t.string  "hnumber"
    t.string  "htype"
    t.float   "dualflight"
    t.float   "soloflight"
    t.float   "dualxc"
    t.float   "soloxc"
    t.float   "day"
    t.float   "night"
    t.float   "xcplan"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "change_time"
    t.string   "change"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",                        null: false
    t.string   "role",                            null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "name"
    t.boolean  "cfi",             default: false
    t.boolean  "cfii",            default: false
    t.boolean  "r44",             default: false
    t.boolean  "r22",             default: false
    t.boolean  "enstrom",         default: false
    t.boolean  "disable",         default: false
    t.date     "startdate"
    t.date     "enddate"
    t.string   "cert_num"
    t.integer  "e_pid"
    t.string   "medcert"
    t.boolean  "med1"
    t.boolean  "med2"
    t.date     "meddate"
    t.string   "desirecert"
    t.boolean  "approval"
    t.float    "fhours"
    t.float    "ihours"
    t.date     "cert_issue"
    t.date     "cert_exp"
    t.float    "r44hours"
    t.float    "r22hours"
    t.float    "ensthours"
    t.date     "latflightcheck"
    t.integer  "inst_id"
    t.string   "phone"
    t.string   "line1"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "eperson"
    t.string   "ephone"
    t.string   "email"
    t.integer  "schoolid"
    t.boolean  "med3"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
