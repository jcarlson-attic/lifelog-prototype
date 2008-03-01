class Attrib < ActiveRecord::Base
  belongs_to :entry
  belongs_to :attrib_type
  belongs_to :value, :polymorphic => true
  
  def display_text
    if (value.has_attribute?(:attrib_value))
      value.attrib_value
    else
      value.entry.display_text
    end
  end
  
  # TODO: Define the value setting method
  # so that it can determine whether the 
  # attrib_value should be set or the 
  # entry_value.
  
end
