class EntryType < ActiveRecord::Base
  has_many :entry_type_attribute_type
  validates_presence_of :name, :message => "is required!"
end
