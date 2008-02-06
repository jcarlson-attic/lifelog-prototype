class AttributeType < ActiveRecord::Base
  belongs_to :entry_type
  validates_presence_of :entry_type_id, :name, :message => "is required"
end
