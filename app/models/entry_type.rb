class EntryType < ActiveRecord::Base
  has_many :attribute_types
  
  validates_presence_of :name, :message => "is required!"
end