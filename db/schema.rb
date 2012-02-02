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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120202140523) do

  create_table "candidates", :force => true do |t|
    t.string   "cellphone"
    t.string   "name"
    t.string   "sex"
    t.string   "school"
    t.string   "major"
    t.string   "email"
    t.string   "summary"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "graduate_year"
    t.string   "graduate_month"
  end

end
