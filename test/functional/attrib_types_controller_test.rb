require File.dirname(__FILE__) + '/../test_helper'

class AttribTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:attrib_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_attrib_type
    assert_difference('AttribType.count') do
      post :create, :attrib_type => { }
    end

    assert_redirected_to attrib_type_path(assigns(:attrib_type))
  end

  def test_should_show_attrib_type
    get :show, :id => attrib_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => attrib_types(:one).id
    assert_response :success
  end

  def test_should_update_attrib_type
    put :update, :id => attrib_types(:one).id, :attrib_type => { }
    assert_redirected_to attrib_type_path(assigns(:attrib_type))
  end

  def test_should_destroy_attrib_type
    assert_difference('AttribType.count', -1) do
      delete :destroy, :id => attrib_types(:one).id
    end

    assert_redirected_to attrib_types_path
  end
end
