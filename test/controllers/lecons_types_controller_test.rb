require 'test_helper'

class LeconsTypesControllerTest < ActionController::TestCase
  setup do
    @lecons_type = lecons_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lecons_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecons_type" do
    assert_difference('LeconsType.count') do
      post :create, lecons_type: { nom: @lecons_type.nom }
    end

    assert_redirected_to lecons_type_path(assigns(:lecons_type))
  end

  test "should show lecons_type" do
    get :show, id: @lecons_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecons_type
    assert_response :success
  end

  test "should update lecons_type" do
    patch :update, id: @lecons_type, lecons_type: { nom: @lecons_type.nom }
    assert_redirected_to lecons_type_path(assigns(:lecons_type))
  end

  test "should destroy lecons_type" do
    assert_difference('LeconsType.count', -1) do
      delete :destroy, id: @lecons_type
    end

    assert_redirected_to lecons_types_path
  end
end
