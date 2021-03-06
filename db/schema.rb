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

ActiveRecord::Schema.define(version: 20131025184507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inputs", force: true do |t|
    t.integer  "job_id"
    t.string   "key"
    t.string   "frameRate"
    t.string   "resolution"
    t.string   "aspectRatio"
    t.string   "interlaced"
    t.string   "container"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.string   "state"
    t.string   "version"
    t.string   "jobId"
    t.string   "pipelineId"
    t.string   "outputKeyPrefix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "output_keys", force: true do |t|
    t.integer  "playlist_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "outputs", force: true do |t|
    t.integer  "job_id"
    t.string   "presetId"
    t.string   "key"
    t.string   "thumbnailPattern"
    t.string   "rotate"
    t.string   "segmentDuration"
    t.string   "status"
    t.string   "duration"
    t.string   "width"
    t.string   "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playlists", force: true do |t|
    t.integer  "job_id"
    t.string   "name"
    t.string   "format"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
