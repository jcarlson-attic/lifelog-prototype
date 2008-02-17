require File.dirname(__FILE__) + '/../test_helper'

class EntryTypeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  
  def test_count
    assert_equal 2, EntryType.count
  end
  
  def test_find_string
    string = EntryType.find(1)
    assert_not_nil string
  end
  
  def test_has_no_attrib_types
    string = EntryType.find(1)
    assert_equal 0, string.attrib_types.size
  end
  
  def test_has_attrib_types
    name = EntryType.find(2)
    assert_equal 2, name.attrib_types.size
  end
end
