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

ActiveRecord::Schema.define(version: 20170221095743) do

  create_table "curriculumviates", force: :cascade do |t|
    t.string   "sent_by"
    t.date     "received_on"
    t.string   "attachment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "curriculumvitaes", force: :cascade do |t|
    t.string   "send_by"
    t.date     "received_on"
    t.string   "attachment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
