class EntryType < ActiveRecord::Base
  has_many :entry_type_attribute_types
  has_many :attribute_types
  validates_presence_of :name, :message => "is required!"
end
