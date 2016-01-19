require 'test_helper'

class EleveLeconsControllerTest < ActionController::TestCase
  setup do
    @eleve_lecon = eleve_lecons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eleve_lecons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eleve_lecon" do
    assert_difference('EleveLecon.count') do
      post :create, eleve_lecon: { eleveId: @eleve_lecon.eleveId, leconId: @eleve_lecon.leconId }
    end

    assert_redirected_to eleve_lecon_path(assigns(:eleve_lecon))
  end

  test "should show eleve_lecon" do
    get :show, id: @eleve_lecon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eleve_lecon
    assert_response :success
  end

  test "should update eleve_lecon" do
    patch :update, id: @eleve_lecon, eleve_lecon: { eleveId: @eleve_lecon.eleveId, leconId: @eleve_lecon.leconId }
    assert_redirected_to eleve_lecon_path(assigns(:eleve_lecon))
  end

  test "should destroy eleve_lecon" do
    assert_difference('EleveLecon.count', -1) do
      delete :destroy, id: @eleve_lecon
    end

    assert_redirected_to eleve_lecons_path
  end
end
