require 'test_helper'

class AssisterLeconCodesControllerTest < ActionController::TestCase
  setup do
    @assister_lecon_code = assister_lecon_codes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assister_lecon_codes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assister_lecon_code" do
    assert_difference('AssisterLeconCode.count') do
      post :create, assister_lecon_code: { lecon_code_id: @assister_lecon_code.lecon_code_id, user_id: @assister_lecon_code.user_id }
    end

    assert_redirected_to assister_lecon_code_path(assigns(:assister_lecon_code))
  end

  test "should show assister_lecon_code" do
    get :show, id: @assister_lecon_code
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assister_lecon_code
    assert_response :success
  end

  test "should update assister_lecon_code" do
    patch :update, id: @assister_lecon_code, assister_lecon_code: { lecon_code_id: @assister_lecon_code.lecon_code_id, user_id: @assister_lecon_code.user_id }
    assert_redirected_to assister_lecon_code_path(assigns(:assister_lecon_code))
  end

  test "should destroy assister_lecon_code" do
    assert_difference('AssisterLeconCode.count', -1) do
      delete :destroy, id: @assister_lecon_code
    end

    assert_redirected_to assister_lecon_codes_path
  end
end
