# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_12_04_232048) do

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "owner"
    t.string "temperament"
  end

  create_table "dogwalkers", force: :cascade do |t|
    t.string "name"
    t.integer "years_of_experience"
    t.integer "start_time"
    t.integer "end_time"
  end

  create_table "dogwalks", force: :cascade do |t|
    t.integer "length"
    t.integer "dogwalker_id"
    t.time "start_time"
    t.time "end_time"
  end

end
