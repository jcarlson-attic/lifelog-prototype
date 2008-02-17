require File.dirname(__FILE__) + '/../test_helper'

class AttribTest < ActiveSupport::TestCase

  def test_count
    assert_equal 3, Attrib.count
  end
  
  def test_attrib
    attrib = Attrib.find(1)
    assert_not_nil attrib
    
    assert attrib.has_attribute?(:entry_id)
    assert_equal 1, attrib.entry_id
    
    assert attrib.has_attribute?(:attrib_type_id)
    assert_equal 1, attrib.attrib_type_id
  end
  
  def test_has_entry
    attrib = Attrib.find(1)
    assert !attrib.entry.nil?
    assert_equal Entry.find(1), attrib.entry
  end
  
  def test_has_attrib_type
    attrib = Attrib.find(1)
    assert !attrib.attrib_type.nil?
    assert_equal AttribType.find(1), attrib.attrib_type
  end
  
  def test_has_attrib_value
    attrib = Attrib.find(1)
    assert !attrib.value.nil?
    assert_equal 'Jarrod', attrib.value.attrib_value
  end
  
  def test_has_entry_value
    attrib = Attrib.find(3)
    assert !attrib.value.nil?
    assert_equal Entry.find(1), attrib.value.entry
  end
  
  def test_attrib_value
    simple_attrib = Attrib.find(1)
    assert_equal AttribValue.find(1).attrib_value, simple_attrib.display_text
  end

end
