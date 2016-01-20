require 'test_helper'

class LeconsControllerTest < ActionController::TestCase
  setup do
    @lecon = lecons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lecons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecon" do
    assert_difference('Lecon.count') do
      post :create, lecon: { date: @lecon.date, lecons_type_id: @lecon.lecons_type_id, time: @lecon.time }
    end

    assert_redirected_to lecon_path(assigns(:lecon))
  end

  test "should show lecon" do
    get :show, id: @lecon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecon
    assert_response :success
  end

  test "should update lecon" do
    patch :update, id: @lecon, lecon: { date: @lecon.date, lecons_type_id: @lecon.lecons_type_id, time: @lecon.time }
    assert_redirected_to lecon_path(assigns(:lecon))
  end

  test "should destroy lecon" do
    assert_difference('Lecon.count', -1) do
      delete :destroy, id: @lecon
    end

    assert_redirected_to lecons_path
  end
end
