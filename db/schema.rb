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

ActiveRecord::Schema.define(:version => 6) do

  create_table "attribute_types", :force => true do |t|
    t.integer  "entry_type_id"
    t.string   "name"
    t.boolean  "collection"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attribute_values", :force => true do |t|
    t.integer  "attribute_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attribute_values", ["attribute_id"], :name => "index_attribute_values_on_attribute_id"

  create_table "attributes", :force => true do |t|
    t.integer  "attribute_type_id"
    t.integer  "entry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attributes_entries", :force => true do |t|
    t.integer  "attribute_id"
    t.integer  "entry_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "attributes_entries", ["attribute_id", "entry_id"], :name => "index_attributes_entries_on_attribute_id_and_entry_id"

  create_table "entries", :force => true do |t|
    t.integer  "entry_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entry_type_attribute_types", :force => true do |t|
    t.integer  "entry_type_id"
    t.integer  "attribute_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entry_types", :force => true do |t|
    t.string   "name"
    t.boolean  "complex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
