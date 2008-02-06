class Attribute < ActiveRecord::Base
  belongs_to :attribute_type
  belongs_to :entry
  has_one :attribute_value
  has_and_belongs_to_many :entry
end
