require File.dirname(__FILE__) + '/../test_helper'

class EntryTypeTest < ActiveSupport::TestCase
  
  def test_count
    assert_equal 2, EntryType.count
  end
  
  def test_entry_type
    et = EntryType.find(1)
    assert_not_nil et
    
    assert et.has_attribute?(:name)
    assert_equal 'String', et.name
    
    assert et.has_attribute?(:complex)
    assert_equal false, et.complex
    
  end
  
  def test_has_no_attrib_types
    string = EntryType.find(1)
    assert_equal 0, string.attrib_types.size
  end
  
  def test_has_attrib_types
    name = EntryType.find(2)
    assert_equal 2, name.attrib_types.size
    
    assert_equal AttribType.find(1), name.attrib_types.find(1)
    assert_equal AttribType.find(2), name.attrib_types.find(2)
  end

end
