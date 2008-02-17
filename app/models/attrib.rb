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
end
