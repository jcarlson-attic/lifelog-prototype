class EntryValue < ActiveRecord::Base
  #has_one :attrib, :as => :value
  belongs_to :entry, :foreign_key => 'attrib_entry_id'
  
  def to_s
    return entry.to_s
  end
end
