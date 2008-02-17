class AttribValue < ActiveRecord::Base
  has_one :attrib, :as => :value
end
