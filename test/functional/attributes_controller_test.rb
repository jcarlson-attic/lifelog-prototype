require File.dirname(__FILE__) + '/../test_helper'

class AttributesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:attributes)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_attribute
    assert_difference('Attribute.count') do
      post :create, :attribute => { }
    end

    assert_redirected_to attribute_path(assigns(:attribute))
  end

  def test_should_show_attribute
    get :show, :id => attributes(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => attributes(:one).id
    assert_response :success
  end

  def test_should_update_attribute
    put :update, :id => attributes(:one).id, :attribute => { }
    assert_redirected_to attribute_path(assigns(:attribute))
  end

  def test_should_destroy_attribute
    assert_difference('Attribute.count', -1) do
      delete :destroy, :id => attributes(:one).id
    end

    assert_redirected_to attributes_path
  end
end
