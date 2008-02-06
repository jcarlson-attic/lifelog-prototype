class CreateEntryTypeAttributeTypes < ActiveRecord::Migration
  def self.up
    create_table :entry_type_attribute_types do |t|
      t.integer :id
      t.references :entry_type, :attribute_type

      t.timestamps
    end
    add_index entry_type_attribute_types, [:entry_type_id, :attribute_type_id]
  end

  def self.down
    drop_table :entry_type_attribute_types
  end
end
