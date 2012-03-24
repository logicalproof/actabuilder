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

ActiveRecord::Schema.define(:version => 20120323221105) do

  create_table "assigned_ships", :force => true do |t|
    t.integer  "ship_id"
    t.integer  "fleet_list_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "quantity",      :default => 1
  end

  create_table "fleet_lists", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ships", :force => true do |t|
    t.string   "name"
    t.integer  "cost"
    t.string   "image_url"
    t.string   "empire_image"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "turn"
    t.integer  "marines"
    t.string   "craft"
    t.integer  "damage"
    t.integer  "cripple_value"
    t.integer  "shield"
    t.integer  "weapon_system", :default => 0
  end

  create_table "traits", :force => true do |t|
    t.integer  "anti_drone"
    t.boolean  "armoured"
    t.string   "cloak"
    t.integer  "command"
    t.boolean  "enhanced_bridge"
    t.boolean  "fast"
    t.boolean  "immobile"
    t.integer  "labs"
    t.boolean  "lumbering"
    t.boolean  "probes"
    t.boolean  "quick_launch"
    t.boolean  "scout"
    t.boolean  "slow"
    t.integer  "stealth"
    t.integer  "tractor_beam"
    t.integer  "transporter"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "ship_id"
    t.boolean  "agile"
  end

  create_table "weapons", :force => true do |t|
    t.string   "name"
    t.integer  "range"
    t.string   "special"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
