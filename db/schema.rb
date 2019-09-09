# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_09_09_191943) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_repos", force: :cascade do |t|
    t.string "interests"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_repos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "food_intake"
    t.string "medications"
    t.integer "hours_of_sleep"
    t.integer "exercise"
    t.string "shower"
    t.string "medical_history"
    t.integer "weight"
    t.integer "height"
    t.integer "weight_goal"
    t.integer "exercise_goal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "video_repos", force: :cascade do |t|
    t.bigint "user_repo_id"
    t.bigint "video_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_repo_id"], name: "index_video_repos_on_user_repo_id"
    t.index ["video_id"], name: "index_video_repos_on_video_id"
  end

  create_table "videos", force: :cascade do |t|
    t.string "url"
    t.string "description"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
