require 'test_helper'

class EleveFormulesControllerTest < ActionController::TestCase
  setup do
    @eleve_formule = eleve_formules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eleve_formules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eleve_formule" do
    assert_difference('EleveFormule.count') do
      post :create, eleve_formule: { eleveId: @eleve_formule.eleveId, formuleId: @eleve_formule.formuleId }
    end

    assert_redirected_to eleve_formule_path(assigns(:eleve_formule))
  end

  test "should show eleve_formule" do
    get :show, id: @eleve_formule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eleve_formule
    assert_response :success
  end

  test "should update eleve_formule" do
    patch :update, id: @eleve_formule, eleve_formule: { eleveId: @eleve_formule.eleveId, formuleId: @eleve_formule.formuleId }
    assert_redirected_to eleve_formule_path(assigns(:eleve_formule))
  end

  test "should destroy eleve_formule" do
    assert_difference('EleveFormule.count', -1) do
      delete :destroy, id: @eleve_formule
    end

    assert_redirected_to eleve_formules_path
  end
end
