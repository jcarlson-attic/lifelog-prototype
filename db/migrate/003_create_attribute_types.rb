class CreateAttributeTypes < ActiveRecord::Migration
  def self.up
    create_table :attribute_types do |t|
      t.integer :id
      t.string :name
      t.references :entry_type
      t.boolean :collection

      t.timestamps
    end
  end

  def self.down
    drop_table :attribute_types
  end
end
