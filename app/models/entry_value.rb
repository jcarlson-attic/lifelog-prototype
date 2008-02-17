class EntryValue < ActiveRecord::Base
  belongs_to :entry, :foreign_key => 'attribute_entry_id'
end
