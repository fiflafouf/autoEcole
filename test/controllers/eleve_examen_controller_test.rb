require 'test_helper'

class EleveExamenControllerTest < ActionController::TestCase
  setup do
    @eleve_examan = eleve_examen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eleve_examen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eleve_examan" do
    assert_difference('EleveExaman.count') do
      post :create, eleve_examan: { eleveId: @eleve_examan.eleveId, examenId: @eleve_examan.examenId, passer: @eleve_examan.passer, score: @eleve_examan.score }
    end

    assert_redirected_to eleve_examan_path(assigns(:eleve_examan))
  end

  test "should show eleve_examan" do
    get :show, id: @eleve_examan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eleve_examan
    assert_response :success
  end

  test "should update eleve_examan" do
    patch :update, id: @eleve_examan, eleve_examan: { eleveId: @eleve_examan.eleveId, examenId: @eleve_examan.examenId, passer: @eleve_examan.passer, score: @eleve_examan.score }
    assert_redirected_to eleve_examan_path(assigns(:eleve_examan))
  end

  test "should destroy eleve_examan" do
    assert_difference('EleveExaman.count', -1) do
      delete :destroy, id: @eleve_examan
    end

    assert_redirected_to eleve_examen_path
  end
end
