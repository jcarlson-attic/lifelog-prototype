class CreateAttribTypes < ActiveRecord::Migration
  def self.up
    create_table :attrib_types do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :attrib_types
  end
end
