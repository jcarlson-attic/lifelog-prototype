class Attrib < ActiveRecord::Base
  belongs_to :entry
  belongs_to :attribute_type
  has_one :value, :polymorphic => true
end
