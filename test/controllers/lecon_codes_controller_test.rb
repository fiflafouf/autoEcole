require 'test_helper'

class LeconCodesControllerTest < ActionController::TestCase
  setup do
    @lecon_code = lecon_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lecon_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecon_code" do
    assert_difference('LeconCode.count') do
      post :create, lecon_code: { date: @lecon_code.date, heure: @lecon_code.heure, id: @lecon_code.id }
    end

    assert_redirected_to lecon_code_path(assigns(:lecon_code))
  end

  test "should show lecon_code" do
    get :show, id: @lecon_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecon_code
    assert_response :success
  end

  test "should update lecon_code" do
    patch :update, id: @lecon_code, lecon_code: { date: @lecon_code.date, heure: @lecon_code.heure, id: @lecon_code.id }
    assert_redirected_to lecon_code_path(assigns(:lecon_code))
  end

  test "should destroy lecon_code" do
    assert_difference('LeconCode.count', -1) do
      delete :destroy, id: @lecon_code
    end

    assert_redirected_to lecon_codes_path
  end
end
