require File.dirname(__FILE__) + '/../test_helper'

class AttributeValuesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:attribute_values)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_attribute_value
    assert_difference('AttributeValue.count') do
      post :create, :attribute_value => { }
    end

    assert_redirected_to attribute_value_path(assigns(:attribute_value))
  end

  def test_should_show_attribute_value
    get :show, :id => attribute_values(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => attribute_values(:one).id
    assert_response :success
  end

  def test_should_update_attribute_value
    put :update, :id => attribute_values(:one).id, :attribute_value => { }
    assert_redirected_to attribute_value_path(assigns(:attribute_value))
  end

  def test_should_destroy_attribute_value
    assert_difference('AttributeValue.count', -1) do
      delete :destroy, :id => attribute_values(:one).id
    end

    assert_redirected_to attribute_values_path
  end
end
