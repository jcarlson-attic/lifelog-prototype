class Entry < ActiveRecord::Base
  belongs_to :entry_type
  has_many :attribs
  
  def complete
    # Is there an 'attribute' attached for each 'attribute_type' defined?
    
    # Get the set of expected attribute types
    expected_types = entry_type.attrib_types
    
    # if there are fewer attributes than attribute types, this is not complete
    if (expected_types.size > attribs.size)
      return false
    end
    
    # Return false if an actual type is not found for each expected type
    for expected in expected_types
      return false if nil == attribs.find(:first, :conditions => "attrib_type_id = #{expected.id}")
    end
    
    return true
   
  end
  
  def missing
    # Is there an 'attribute' attached for each 'attribute_type' defined?
    
    # Get the set of expected attribute types
    expected_types = entry_type.attrib_types
    
    # Return false if an actual type is not found for each expected type
    missing = expected_types.select {|expected|
      nil == attribs.find(:first, :conditions => "attrib_type_id = #{expected.id}")
    }
    
    return missing

  end
  
end
