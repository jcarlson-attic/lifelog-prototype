require File.dirname(__FILE__) + '/../test_helper'

class EntryTest < ActiveSupport::TestCase

  def test_entry
    entry = Entry.find(1)
    assert_not_nil entry
    
    assert entry.has_attribute?(:entry_type_id)
    assert_equal 2, entry.entry_type_id
  end
  
  def test_has_entry_type
    entry = Entry.find(1)
    assert !entry.entry_type.nil?
    assert_equal EntryType.find(2), entry.entry_type
  end
  
  def test_has_attribs
    entry = Entry.find(1)
    assert_equal 2, entry.attribs.size
    
    assert_equal Attrib.find(1), entry.attribs.find(1)
    assert_equal Attrib.find(2), entry.attribs.find(2)
  end
  
  def test_complete
    entry = Entry.find(1)
    assert entry.complete
  end
  
  def test_incomplete
    entry = Entry.find(3)
    assert !entry.complete
  end
  
  def test_missing_none
    entry = Entry.find(1)
    missing = entry.missing
    assert_not_nil missing
    assert missing.size == 0
  end

  def test_missing_one
    entry = Entry.find(3)
    missing = entry.missing
    assert_not_nil missing
    assert missing.size == 1
    assert_equal AttribType.find(2), missing.first
  end

end
