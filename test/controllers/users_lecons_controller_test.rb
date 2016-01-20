require 'test_helper'

class UsersLeconsControllerTest < ActionController::TestCase
  setup do
    @users_lecon = users_lecons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_lecons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_lecon" do
    assert_difference('UsersLecon.count') do
      post :create, users_lecon: { lecon_id: @users_lecon.lecon_id, user_id: @users_lecon.user_id }
    end

    assert_redirected_to users_lecon_path(assigns(:users_lecon))
  end

  test "should show users_lecon" do
    get :show, id: @users_lecon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_lecon
    assert_response :success
  end

  test "should update users_lecon" do
    patch :update, id: @users_lecon, users_lecon: { lecon_id: @users_lecon.lecon_id, user_id: @users_lecon.user_id }
    assert_redirected_to users_lecon_path(assigns(:users_lecon))
  end

  test "should destroy users_lecon" do
    assert_difference('UsersLecon.count', -1) do
      delete :destroy, id: @users_lecon
    end

    assert_redirected_to users_lecons_path
  end
end
