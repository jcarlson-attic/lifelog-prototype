class AttribValue < ActiveRecord::Base
  #has_one :attrib, :as => :value
  
  def to_s
    return attrib_value
  end
end
