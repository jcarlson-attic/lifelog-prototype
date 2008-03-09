class Attrib < ActiveRecord::Base
  belongs_to :entry
  belongs_to :attrib_type
  belongs_to :value, :polymorphic => true
  
  def to_s
    return value.to_s
  end
  
  # TODO: Define the value setting method
  # so that it can determine whether the 
  # attrib_value should be set or the 
  # entry_value.
  
end
