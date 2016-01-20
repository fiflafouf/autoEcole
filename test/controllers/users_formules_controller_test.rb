require 'test_helper'

class UsersFormulesControllerTest < ActionController::TestCase
  setup do
    @users_formule = users_formules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_formules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_formule" do
    assert_difference('UsersFormule.count') do
      post :create, users_formule: { formule_id: @users_formule.formule_id, user_id: @users_formule.user_id }
    end

    assert_redirected_to users_formule_path(assigns(:users_formule))
  end

  test "should show users_formule" do
    get :show, id: @users_formule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_formule
    assert_response :success
  end

  test "should update users_formule" do
    patch :update, id: @users_formule, users_formule: { formule_id: @users_formule.formule_id, user_id: @users_formule.user_id }
    assert_redirected_to users_formule_path(assigns(:users_formule))
  end

  test "should destroy users_formule" do
    assert_difference('UsersFormule.count', -1) do
      delete :destroy, id: @users_formule
    end

    assert_redirected_to users_formules_path
  end
end
