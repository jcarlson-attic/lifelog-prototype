require File.dirname(__FILE__) + '/../test_helper'

class EntryValueTest < ActiveSupport::TestCase

  def test_count
    assert_equal 1, EntryValue.count
  end
  
  def test_entry_value
    entry_value = EntryValue.find(1)
    assert_not_nil entry_value
    
    assert entry_value.has_attribute?(:attrib_entry_id)
    assert_equal 1, entry_value.attrib_entry_id
  end
  
  def test_has_entry
    entry_value = EntryValue.find(1)
    
    assert !entry_value.entry.nil?
    assert_equal Entry.find(1), entry_value.entry
  end

end
