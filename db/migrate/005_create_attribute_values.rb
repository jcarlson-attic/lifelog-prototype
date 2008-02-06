class CreateAttributeValues < ActiveRecord::Migration
  def self.up
    create_table :attribute_values do |t|
      t.references :attribute
      t.string :value

      t.timestamps
    end
    add_index :attribute_values, [:attribute_id]
  end

  def self.down
    drop_table :attribute_values
  end
end
