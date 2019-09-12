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

ActiveRecord::Schema.define(version: 2019_09_12_170836) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "event_repos", force: :cascade do |t|
    t.bigint "user_repo_id", null: false
    t.bigint "event_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_repos_on_event_id"
    t.index ["user_repo_id"], name: "index_event_repos_on_user_repo_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "description"
    t.integer "date"
    t.integer "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recipe_repos", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "user_repo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_recipe_repos_on_recipe_id"
    t.index ["user_repo_id"], name: "index_recipe_repos_on_user_repo_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relaxation_repos", force: :cascade do |t|
    t.bigint "user_repo_id", null: false
    t.bigint "relaxation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["relaxation_id"], name: "index_relaxation_repos_on_relaxation_id"
    t.index ["user_repo_id"], name: "index_relaxation_repos_on_user_repo_id"
  end

  create_table "relaxations", force: :cascade do |t|
    t.string "tips"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reminder_repos", force: :cascade do |t|
    t.bigint "reminder_id", null: false
    t.bigint "user_repo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reminder_id"], name: "index_reminder_repos_on_reminder_id"
    t.index ["user_repo_id"], name: "index_reminder_repos_on_user_repo_id"
  end

  create_table "reminders", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.datetime "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_repos", force: :cascade do |t|
    t.string "interests"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "exercise_videos"
    t.boolean "recipes"
    t.boolean "relaxation"
    t.boolean "medical_foods"
    t.boolean "events"
    t.index ["user_id"], name: "index_user_repos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
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

  add_foreign_key "event_repos", "events"
  add_foreign_key "event_repos", "user_repos"
  add_foreign_key "recipe_repos", "recipes"
  add_foreign_key "recipe_repos", "user_repos"
  add_foreign_key "relaxation_repos", "relaxations"
  add_foreign_key "relaxation_repos", "user_repos"
  add_foreign_key "reminder_repos", "reminders"
  add_foreign_key "reminder_repos", "user_repos"
end
