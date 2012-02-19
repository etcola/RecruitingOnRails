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

ActiveRecord::Schema.define(:version => 20120210153055) do

  create_table "candidates", :force => true do |t|
    t.string   "cellphone"
    t.string   "name"
    t.string   "sex"
    t.string   "college"
    t.string   "major"
    t.string   "graduate_year"
    t.string   "graduate_month"
    t.string   "email"
    t.string   "degree"
    t.string   "job_title"
    t.string   "track_source"
    t.string   "resume"
    t.integer  "lg_score",              :default => 0
    t.integer  "lg_answered",           :default => 0
    t.integer  "wl_score",              :default => 0
    t.integer  "wl_answered",           :default => 0
    t.string   "assignment_submitted",  :default => "否"
    t.string   "hr_interview_group"
    t.string   "hr_interview_result",   :default => "pass"
    t.string   "team_interview_group"
    t.string   "team_interview_result", :default => "pass"
    t.string   "offer",                 :default => "否"
    t.string   "comment"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "emails", :force => true do |t|
    t.string   "from_address",     :null => false
    t.string   "reply_to_address"
    t.string   "subject"
    t.text     "to_address"
    t.text     "cc_address"
    t.text     "bcc_address"
    t.text     "content"
    t.datetime "sent_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
