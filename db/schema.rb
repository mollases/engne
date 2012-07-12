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

ActiveRecord::Schema.define(:version => 20120712004630) do

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

  create_table "members", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
    t.string   "password_salt"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.decimal  "total_investment_needed"
    t.datetime "due_date"
    t.datetime "return_date"
    t.decimal  "percent_return"
    t.integer  "member_id"
    t.integer  "category_id"
  end

end
