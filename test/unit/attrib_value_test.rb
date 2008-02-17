require File.dirname(__FILE__) + '/../test_helper'

class AttribValueTest < ActiveSupport::TestCase

  def test_count
    assert_equal 2, AttribValue.count
  end
  
  def test_attrib_value
    attrib_value = AttribValue.find(1)
    assert_not_nil attrib_value
    
    assert attrib_value.has_attribute?(:attrib_value)
    assert_equal 'Jarrod', attrib_value.attrib_value
  end

end
