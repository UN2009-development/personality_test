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

ActiveRecord::Schema.define(version: 2021_07_09_135019) do

  create_table "answers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "enhancer_score"
    t.integer "transmuter_score"
    t.integer "emitter_score"
    t.integer "conjurer_score"
    t.integer "manipulator_score"
    t.integer "specialist_score"
    t.integer "question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.text "question_text"
    t.integer "enhancer"
    t.integer "transmuter"
    t.integer "emitter"
    t.integer "conjurer"
    t.integer "manipulator"
    t.integer "specialist"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "decision_text"
  end

  create_table "temp_answers", force: :cascade do |t|
    t.integer "temp_answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
