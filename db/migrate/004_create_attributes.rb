class CreateAttributes < ActiveRecord::Migration
  def self.up
    create_table :attributes do |t|
      t.integer :id
      t.references :attribute_type, :entry

      t.timestamps
    end
    
    create_table :attributes_entries do |t|
      t.references :attribute
      t.references :entry
      
      t.timestamps
    end
    add_index :attributes_entries, [:attribute_id, :entry_id]
    
  end

  def self.down
    drop_table :attributes
    drop_table :attributes_entries
  end
end
