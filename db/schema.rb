# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 1) do

  create_table "attrib_types", :force => true do |t|
    t.string   "name"
    t.boolean  "collection"
    t.integer  "entry_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attrib_types_entry_types", :id => false, :force => true do |t|
    t.integer "attrib_type_id"
    t.integer "entry_type_id"
  end

  add_index "attrib_types_entry_types", ["attrib_type_id", "entry_type_id"], :name => "index_attrib_types_entry_types_on_attrib_type_id_and_entry_type_id", :unique => true

  create_table "attrib_values", :id => false, :force => true do |t|
    t.integer  "attrib_id"
    t.string   "attrib_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attrib_values", ["attrib_id"], :name => "index_attrib_values_on_attrib_id", :unique => true

  create_table "attribs", :force => true do |t|
    t.integer  "entry_id"
    t.integer  "attrib_type_id"
    t.integer  "value_id"
    t.string   "value_type",     :default => "AttribValue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", :force => true do |t|
    t.integer  "entry_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entry_types", :force => true do |t|
    t.string   "name"
    t.boolean  "complex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entry_values", :id => false, :force => true do |t|
    t.integer  "attrib_id"
    t.integer  "attrib_entry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "entry_values", ["attrib_id"], :name => "index_entry_values_on_attrib_id", :unique => true

end
