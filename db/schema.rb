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

ActiveRecord::Schema.define(version: 20170117204809) do

  create_table "contexts", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_contexts_on_user_id"
  end

  create_table "contexts_tasks", id: false, force: :cascade do |t|
    t.integer "task_id"
    t.integer "context_id"
    t.index ["context_id"], name: "index_contexts_tasks_on_context_id"
    t.index ["task_id"], name: "index_contexts_tasks_on_task_id"
  end

  create_table "pomodoro_logs", force: :cascade do |t|
    t.datetime "start_time"
    t.integer  "task_id"
    t.integer  "pomodoro_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["pomodoro_id"], name: "index_pomodoro_logs_on_pomodoro_id"
    t.index ["task_id"], name: "index_pomodoro_logs_on_task_id"
  end

  create_table "pomodoros", force: :cascade do |t|
    t.integer  "work_time"
    t.integer  "rest_time"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pomodoros_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_projects_on_user_id"
  end

  create_table "projects_tasks", id: false, force: :cascade do |t|
    t.integer "task_id"
    t.integer "projects_id"
    t.index ["projects_id"], name: "index_projects_tasks_on_projects_id"
    t.index ["task_id"], name: "index_projects_tasks_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.date     "due"
    t.datetime "completed_at"
    t.integer  "priority"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "fullname"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
