class EntryTypeAttributeType < ActiveRecord::Base
  validates_presence_of(:entry_type_id, :attribute_type_id, :message => "is required")
  
  def entry_type
    EntryType.find(entry_type_id)
  end
  
  def attribute_type
    AttributeType.find(attribute_type_id)
  end
  
end
