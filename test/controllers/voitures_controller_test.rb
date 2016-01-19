require 'test_helper'

class VoituresControllerTest < ActionController::TestCase
  setup do
    @voiture = voitures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voitures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voiture" do
    assert_difference('Voiture.count') do
      post :create, voiture: { immatriculation: @voiture.immatriculation, km: @voiture.km, marque: @voiture.marque, modele: @voiture.modele }
    end

    assert_redirected_to voiture_path(assigns(:voiture))
  end

  test "should show voiture" do
    get :show, id: @voiture
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @voiture
    assert_response :success
  end

  test "should update voiture" do
    patch :update, id: @voiture, voiture: { immatriculation: @voiture.immatriculation, km: @voiture.km, marque: @voiture.marque, modele: @voiture.modele }
    assert_redirected_to voiture_path(assigns(:voiture))
  end

  test "should destroy voiture" do
    assert_difference('Voiture.count', -1) do
      delete :destroy, id: @voiture
    end

    assert_redirected_to voitures_path
  end
end
