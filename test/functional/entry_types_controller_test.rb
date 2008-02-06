require File.dirname(__FILE__) + '/../test_helper'

class EntryTypesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:entry_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_entry_type
    assert_difference('EntryType.count') do
      post :create, :entry_type => { }
    end

    assert_redirected_to entry_type_path(assigns(:entry_type))
  end

  def test_should_show_entry_type
    get :show, :id => entry_types(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => entry_types(:one).id
    assert_response :success
  end

  def test_should_update_entry_type
    put :update, :id => entry_types(:one).id, :entry_type => { }
    assert_redirected_to entry_type_path(assigns(:entry_type))
  end

  def test_should_destroy_entry_type
    assert_difference('EntryType.count', -1) do
      delete :destroy, :id => entry_types(:one).id
    end

    assert_redirected_to entry_types_path
  end
end
