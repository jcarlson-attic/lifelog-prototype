class CreateEntryTypes < ActiveRecord::Migration
  def self.up
    create_table :entry_types do |t|
      t.integer :id
      t.string :name
      t.boolean :complex

      t.timestamps
    end
  end

  def self.down
    drop_table :entry_types
  end
end
