require File.dirname(__FILE__) + '/../test_helper'

class AttributeTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:attribute_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_attribute_type
    assert_difference('AttributeType.count') do
      post :create, :attribute_type => { }
    end

    assert_redirected_to attribute_type_path(assigns(:attribute_type))
  end

  def test_should_show_attribute_type
    get :show, :id => attribute_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => attribute_types(:one).id
    assert_response :success
  end

  def test_should_update_attribute_type
    put :update, :id => attribute_types(:one).id, :attribute_type => { }
    assert_redirected_to attribute_type_path(assigns(:attribute_type))
  end

  def test_should_destroy_attribute_type
    assert_difference('AttributeType.count', -1) do
      delete :destroy, :id => attribute_types(:one).id
    end

    assert_redirected_to attribute_types_path
  end
end
