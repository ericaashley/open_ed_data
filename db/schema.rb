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

ActiveRecord::Schema.define(version: 20150414223141) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string   "city_name",  null: false
    t.integer  "state_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "nces_id",       null: false
    t.string   "district_name", null: false
    t.integer  "state_id",      null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider",   default: "none", null: false
    t.string   "uid",        default: "",     null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "school_charters", force: :cascade do |t|
    t.string   "nces_id",             null: false
    t.string   "school_charter_name", null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "school_levels", force: :cascade do |t|
    t.string   "nces_id",           null: false
    t.string   "school_level_name", null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "school_magnets", force: :cascade do |t|
    t.string   "nces_id",            null: false
    t.string   "school_magnet_name", null: false
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "school_title_ones", force: :cascade do |t|
    t.string   "nces_id",                   null: false
    t.string   "school_title_one_eligible", null: false
    t.string   "school_title_one_program",  null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "school_types", force: :cascade do |t|
    t.string   "nces_id",          null: false
    t.string   "school_type_name", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "schools", force: :cascade do |t|
    t.integer  "district_id", null: false
    t.integer  "city_id",     null: false
    t.integer  "state_id",    null: false
    t.string   "survyear"
    t.string   "ncessch",     null: false
    t.string   "fipst"
    t.string   "leaid"
    t.string   "schno"
    t.string   "stid"
    t.string   "seasch"
    t.string   "leanm"
    t.string   "schnam"
    t.string   "phone"
    t.string   "mstree"
    t.string   "mcity"
    t.string   "mstate"
    t.string   "mzip"
    t.string   "mzip4"
    t.string   "lstree"
    t.string   "lcity"
    t.string   "lstate"
    t.string   "lzip"
    t.string   "lzip4"
    t.string   "sch_type"
    t.string   "status"
    t.string   "union"
    t.string   "ulocal"
    t.string   "latcod"
    t.string   "loncod"
    t.string   "conum"
    t.string   "coname"
    t.string   "cdcode"
    t.string   "bies"
    t.string   "reconsty"
    t.string   "reconstf"
    t.string   "smempup"
    t.string   "ismempup"
    t.string   "sftepup"
    t.string   "isftepup"
    t.string   "sfle"
    t.string   "isfle"
    t.string   "spfemale"
    t.string   "ispfemale"
    t.string   "spwhite"
    t.string   "ispwhite"
    t.string   "spelm"
    t.string   "ispelm"
    t.decimal  "fte"
    t.string   "gslo"
    t.string   "gshi"
    t.string   "pkoffrd"
    t.string   "kgoffrd"
    t.string   "g01offrd"
    t.string   "g02offrd"
    t.string   "g03offrd"
    t.string   "g04offrd"
    t.string   "g05offrd"
    t.string   "g06offrd"
    t.string   "g07offrd"
    t.string   "g08offrd"
    t.string   "g09offrd"
    t.string   "g10offrd"
    t.string   "g11offrd"
    t.string   "g12offrd"
    t.string   "ugoffrd"
    t.string   "level"
    t.string   "titleistat"
    t.string   "titlei"
    t.string   "stitli"
    t.string   "magnet"
    t.string   "chartr"
    t.string   "shared"
    t.integer  "frelch"
    t.integer  "redlch"
    t.integer  "totfrl"
    t.string   "racecat"
    t.integer  "pk"
    t.integer  "ampkm"
    t.integer  "ampkf"
    t.integer  "aspkm"
    t.integer  "aspkf"
    t.integer  "hipkm"
    t.integer  "hipkf"
    t.integer  "blpkm"
    t.integer  "blpkf"
    t.integer  "whpkm"
    t.integer  "whpkf"
    t.integer  "hppkm"
    t.integer  "hppkf"
    t.integer  "trpkm"
    t.integer  "trpkf"
    t.integer  "kg"
    t.integer  "amkgm"
    t.integer  "amkgf"
    t.integer  "askgm"
    t.integer  "askgf"
    t.integer  "hikgm"
    t.integer  "hikgf"
    t.integer  "blkgm"
    t.integer  "blkgf"
    t.integer  "whkgm"
    t.integer  "whkgf"
    t.integer  "hpkgm"
    t.integer  "hpkgf"
    t.integer  "trkgm"
    t.integer  "trkgf"
    t.integer  "g01"
    t.integer  "am01m"
    t.integer  "am01f"
    t.integer  "as01m"
    t.integer  "as01f"
    t.integer  "hi01m"
    t.integer  "hi01f"
    t.integer  "bl01m"
    t.integer  "bl01f"
    t.integer  "wh01m"
    t.integer  "wh01f"
    t.integer  "hp01m"
    t.integer  "hp01f"
    t.integer  "tr01m"
    t.integer  "tr01f"
    t.integer  "g02"
    t.integer  "am02m"
    t.integer  "am02f"
    t.integer  "as02m"
    t.integer  "as02f"
    t.integer  "hi02m"
    t.integer  "hi02f"
    t.integer  "bl02m"
    t.integer  "bl02f"
    t.integer  "wh02m"
    t.integer  "wh02f"
    t.integer  "hp02m"
    t.integer  "hp02f"
    t.integer  "tr02m"
    t.integer  "tr02f"
    t.integer  "g03"
    t.integer  "am03m"
    t.integer  "am03f"
    t.integer  "as03m"
    t.integer  "as03f"
    t.integer  "hi03m"
    t.integer  "hi03f"
    t.integer  "bl03m"
    t.integer  "bl03f"
    t.integer  "wh03m"
    t.integer  "wh03f"
    t.integer  "hp03m"
    t.integer  "hp03f"
    t.integer  "tr03m"
    t.integer  "tr03f"
    t.integer  "g04"
    t.integer  "am04m"
    t.integer  "am04f"
    t.integer  "as04m"
    t.integer  "as04f"
    t.integer  "hi04m"
    t.integer  "hi04f"
    t.integer  "bl04m"
    t.integer  "bl04f"
    t.integer  "wh04m"
    t.integer  "wh04f"
    t.integer  "hp04m"
    t.integer  "hp04f"
    t.integer  "tr04m"
    t.integer  "tr04f"
    t.integer  "g05"
    t.integer  "am05m"
    t.integer  "am05f"
    t.integer  "as05m"
    t.integer  "as05f"
    t.integer  "hi05m"
    t.integer  "hi05f"
    t.integer  "bl05m"
    t.integer  "bl05f"
    t.integer  "wh05m"
    t.integer  "wh05f"
    t.integer  "hp05m"
    t.integer  "hp05f"
    t.integer  "tr05m"
    t.integer  "tr05f"
    t.integer  "g06"
    t.integer  "am06m"
    t.integer  "am06f"
    t.integer  "as06m"
    t.integer  "as06f"
    t.integer  "hi06m"
    t.integer  "hi06f"
    t.integer  "bl06m"
    t.integer  "bl06f"
    t.integer  "wh06m"
    t.integer  "wh06f"
    t.integer  "hp06m"
    t.integer  "hp06f"
    t.integer  "tr06m"
    t.integer  "tr06f"
    t.integer  "g07"
    t.integer  "am07m"
    t.integer  "am07f"
    t.integer  "as07m"
    t.integer  "as07f"
    t.integer  "hi07m"
    t.integer  "hi07f"
    t.integer  "bl07m"
    t.integer  "bl07f"
    t.integer  "wh07m"
    t.integer  "wh07f"
    t.integer  "hp07m"
    t.integer  "hp07f"
    t.integer  "tr07m"
    t.integer  "tr07f"
    t.integer  "g08"
    t.integer  "am08m"
    t.integer  "am08f"
    t.integer  "as08m"
    t.integer  "as08f"
    t.integer  "hi08m"
    t.integer  "hi08f"
    t.integer  "bl08m"
    t.integer  "bl08f"
    t.integer  "wh08m"
    t.integer  "wh08f"
    t.integer  "hp08m"
    t.integer  "hp08f"
    t.integer  "tr08m"
    t.integer  "tr08f"
    t.integer  "g09"
    t.integer  "am09m"
    t.integer  "am09f"
    t.integer  "as09m"
    t.integer  "as09f"
    t.integer  "hi09m"
    t.integer  "hi09f"
    t.integer  "bl09m"
    t.integer  "bl09f"
    t.integer  "wh09m"
    t.integer  "wh09f"
    t.integer  "hp09m"
    t.integer  "hp09f"
    t.integer  "tr09m"
    t.integer  "tr09f"
    t.integer  "g10"
    t.integer  "am10m"
    t.integer  "am10f"
    t.integer  "as10m"
    t.integer  "as10f"
    t.integer  "hi10m"
    t.integer  "hi10f"
    t.integer  "bl10m"
    t.integer  "bl10f"
    t.integer  "wh10m"
    t.integer  "wh10f"
    t.integer  "hp10m"
    t.integer  "hp10f"
    t.integer  "tr10m"
    t.integer  "tr10f"
    t.integer  "g11"
    t.integer  "am11m"
    t.integer  "am11f"
    t.integer  "as11m"
    t.integer  "as11f"
    t.integer  "hi11m"
    t.integer  "hi11f"
    t.integer  "bl11m"
    t.integer  "bl11f"
    t.integer  "wh11m"
    t.integer  "wh11f"
    t.integer  "hp11m"
    t.integer  "hp11f"
    t.integer  "tr11m"
    t.integer  "tr11f"
    t.integer  "g12"
    t.integer  "am12m"
    t.integer  "am12f"
    t.integer  "as12m"
    t.integer  "as12f"
    t.integer  "hi12m"
    t.integer  "hi12f"
    t.integer  "bl12m"
    t.integer  "bl12f"
    t.integer  "wh12m"
    t.integer  "wh12f"
    t.integer  "hp12m"
    t.integer  "hp12f"
    t.integer  "tr12m"
    t.integer  "tr12f"
    t.integer  "ug"
    t.integer  "amugm"
    t.integer  "amugf"
    t.integer  "asugm"
    t.integer  "asugf"
    t.integer  "hiugm"
    t.integer  "hiugf"
    t.integer  "blugm"
    t.integer  "blugf"
    t.integer  "whugm"
    t.integer  "whugf"
    t.integer  "hpugm"
    t.integer  "hpugf"
    t.integer  "trugm"
    t.integer  "trugf"
    t.integer  "member"
    t.integer  "am"
    t.integer  "amalm"
    t.integer  "amalf"
    t.integer  "asian"
    t.integer  "asalm"
    t.integer  "asalf"
    t.integer  "hisp"
    t.integer  "hialm"
    t.integer  "hialf"
    t.integer  "black"
    t.integer  "blalm"
    t.integer  "blalf"
    t.integer  "white"
    t.integer  "whalm"
    t.integer  "whalf"
    t.integer  "pacific"
    t.integer  "hpalm"
    t.integer  "hpalf"
    t.integer  "tr"
    t.integer  "tralm"
    t.integer  "tralf"
    t.integer  "toteth"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "ansi_id",      null: false
    t.string   "state_name",   null: false
    t.string   "state_abbrev", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "identities", "users"
end
