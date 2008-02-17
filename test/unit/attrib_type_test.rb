require File.dirname(__FILE__) + '/../test_helper'

class AttribTypeTest < ActiveSupport::TestCase

  def test_count
    assert_equal 3, AttribType.count
  end
  
  def test_attrib_type
    at = AttribType.find(1)
    assert_not_nil at

    assert at.has_attribute?(:entry_type_id)
    assert_equal 1, at.entry_type_id
    
    assert at.has_attribute?(:name)
    assert_equal 'First Name', at.name
    
    assert at.has_attribute?(:collection)
    assert_equal false, at.collection
  end
  
  def test_has_entry_type
    at = AttribType.find(1)
    assert !at.entry_type.nil?
    assert_equal EntryType.find(1), at.entry_type
  end

end
