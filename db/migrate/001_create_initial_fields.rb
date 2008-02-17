class CreateInitialFields < ActiveRecord::Migration
  def self.up
    create_table :entry_types do |t|
      t.string :name
      t.boolean :complex
      t.timestamps
    end
    
    create_table :attribute_types do |t|
      t.string :name
      t.boolean :collection
      t.references :entry_type
      t.timestamps
    end
    
    create_table :attribute_types_entry_types, :id => false do |t|
      t.integer :attribute_type_id, :entry_type_id
    end
    add_index :attribute_types_entry_types, [:attribute_type_id, :entry_type_id], :unique => true

    create_table :entries do |t|
      t.references :entry_type
      t.timestamps
    end

    create_table :attribs do |t|
      t.references :entry
      t.references :attribute_type
      t.references :value, :polymorphic => {:default => 'AttribValue'}
      t.timestamps
    end

    create_table :attrib_values, :id => false do |t|
      t.references :attrib
      t.string :attribute_value
      t.timestamps
    end
    add_index :attrib_values, [:attrib_id], :unique => true

    create_table :entry_values, :id => false do |t|
      t.references :attrib
      t.integer :attribute_entry_id
      t.timestamps
    end
    add_index :entry_values, [:attrib_id], :unique => true
  end

  def self.down
    remove_index :entry_values, :column => [:attrib_id]
    drop_table :entry_values
    remove_index :attrib_values, :column => [:attrib_id]
    drop_table :attrib_values
    drop_table :attribs
    drop_table :entries
    remove_index :attribute_types_entry_types, :column => [:attribute_type_id, :entry_type_id]
    drop_table :attribute_types_entry_types
    drop_table :attribute_types
    drop_table :entry_types
  end
end
