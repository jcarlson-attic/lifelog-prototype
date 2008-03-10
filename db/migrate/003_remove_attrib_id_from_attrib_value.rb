class RemoveAttribIdFromAttribValue < ActiveRecord::Migration
  def self.up
    remove_index :attrib_values, :column => [:attrib_id]
    remove_column :attrib_values, :attrib_id
    remove_index :entry_values, :column => [:attrib_id]
    remove_column :entry_values, :attrib_id
  end

  def self.down
    add_column :entry_values, :attrib_id, :integer
    add_index :entry_values, [:attrib_id], :unique => true
    add_column :attrib_values, :attrib_id, :integer
    add_index :attrib_values, [:attrib_id], :unique => true
  end
end
