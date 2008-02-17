class EntryValue < ActiveRecord::Base
  belongs_to :entry, :foreign_key => 'attrib_entry_id'
end
