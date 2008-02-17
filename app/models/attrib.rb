class Attrib < ActiveRecord::Base
  belongs_to :entry
  belongs_to :attrib_type
  belongs_to :value, :polymorphic => true
end
