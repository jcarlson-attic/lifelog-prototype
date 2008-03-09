class AddTemplateToEntryType < ActiveRecord::Migration
  def self.up
    add_column :entry_types, :template, :string
  end

  def self.down
    remove_column :entry_types, :template
  end
end
