class CreateEntryTypes < ActiveRecord::Migration
  def self.up
    create_table :entry_types do |t|
      t.string :name
      t.boolean :complex
      t.timestamps
    end
  end

  def self.down
    drop_table :entry_types
  end
end

class CreateAttributeTypes < ActiveRecord::Migration
  def self.up
    create_table :attribute_types do |t|
      t.string :name
      t.boolean :collection
      t.timestamps
    end
  end

  def self.down
    drop_table :attribute_types
  end
end

class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end

class CreateAttribs < ActiveRecord::Migration
  def self.up
    create_table :attribs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :attribs
  end
end

class CreateAttribValues < ActiveRecord::Migration
  def self.up
    create_table :attrib_values do |t|
      t.string :value
      t.timestamps
    end
  end

  def self.down
    drop_table :attrib_values
  end
end

class CreateEntryValues < ActiveRecord::Migration
  def self.up
    create_table :entry_values do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :entry_values
  end
end
