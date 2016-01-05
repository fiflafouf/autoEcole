require 'test_helper'

class LeconConduitesControllerTest < ActionController::TestCase
  setup do
    @lecon_conduite = lecon_conduites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lecon_conduites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lecon_conduite" do
    assert_difference('LeconConduite.count') do
      post :create, lecon_conduite: { Moniteur_id: @lecon_conduite.Moniteur_id, User_id: @lecon_conduite.User_id, dateLecon: @lecon_conduite.dateLecon, heureLecon: @lecon_conduite.heureLecon, id: @lecon_conduite.id }
    end

    assert_redirected_to lecon_conduite_path(assigns(:lecon_conduite))
  end

  test "should show lecon_conduite" do
    get :show, id: @lecon_conduite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lecon_conduite
    assert_response :success
  end

  test "should update lecon_conduite" do
    patch :update, id: @lecon_conduite, lecon_conduite: { Moniteur_id: @lecon_conduite.Moniteur_id, User_id: @lecon_conduite.User_id, dateLecon: @lecon_conduite.dateLecon, heureLecon: @lecon_conduite.heureLecon, id: @lecon_conduite.id }
    assert_redirected_to lecon_conduite_path(assigns(:lecon_conduite))
  end

  test "should destroy lecon_conduite" do
    assert_difference('LeconConduite.count', -1) do
      delete :destroy, id: @lecon_conduite
    end

    assert_redirected_to lecon_conduites_path
  end
end
