require 'test_helper'

class LeconTypesControllerTest < ActionController::TestCase
  setup do
    @lecon_type = lecon_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lecon_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecon_type" do
    assert_difference('LeconType.count') do
      post :create, lecon_type: { name: @lecon_type.name }
    end

    assert_redirected_to lecon_type_path(assigns(:lecon_type))
  end

  test "should show lecon_type" do
    get :show, id: @lecon_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecon_type
    assert_response :success
  end

  test "should update lecon_type" do
    patch :update, id: @lecon_type, lecon_type: { name: @lecon_type.name }
    assert_redirected_to lecon_type_path(assigns(:lecon_type))
  end

  test "should destroy lecon_type" do
    assert_difference('LeconType.count', -1) do
      delete :destroy, id: @lecon_type
    end

    assert_redirected_to lecon_types_path
  end
end
