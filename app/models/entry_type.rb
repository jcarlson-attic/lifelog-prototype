class EntryType < ActiveRecord::Base
  has_and_belongs_to_many :attrib_types, :select => "attrib_types.*"
  
  validates_presence_of :name, :message => "is required!"
end