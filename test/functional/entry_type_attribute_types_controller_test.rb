require File.dirname(__FILE__) + '/../test_helper'

class EntryTypeAttributeTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:entry_type_attribute_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_entry_type_attribute_type
    assert_difference('EntryTypeAttributeType.count') do
      post :create, :entry_type_attribute_type => { }
    end

    assert_redirected_to entry_type_attribute_type_path(assigns(:entry_type_attribute_type))
  end

  def test_should_show_entry_type_attribute_type
    get :show, :id => entry_type_attribute_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => entry_type_attribute_types(:one).id
    assert_response :success
  end

  def test_should_update_entry_type_attribute_type
    put :update, :id => entry_type_attribute_types(:one).id, :entry_type_attribute_type => { }
    assert_redirected_to entry_type_attribute_type_path(assigns(:entry_type_attribute_type))
  end

  def test_should_destroy_entry_type_attribute_type
    assert_difference('EntryTypeAttributeType.count', -1) do
      delete :destroy, :id => entry_type_attribute_types(:one).id
    end

    assert_redirected_to entry_type_attribute_types_path
  end
end
