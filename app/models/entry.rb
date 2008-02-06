class Entry < ActiveRecord::Base
  belongs_to :entry_type
  has_many :attributes
  has_and_belongs_to_many :attributes
end
