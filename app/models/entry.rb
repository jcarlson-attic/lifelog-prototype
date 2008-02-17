class Entry < ActiveRecord::Base
  belongs_to :entry_type
  has_many :attribs
end
