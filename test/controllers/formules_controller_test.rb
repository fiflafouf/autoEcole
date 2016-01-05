require 'test_helper'

class FormulesControllerTest < ActionController::TestCase
  setup do
    @formule = formules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formule" do
    assert_difference('Formule.count') do
      post :create, formule: { description: @formule.description, id: @formule.id, nbTicket: @formule.nbTicket, price: @formule.price, priceTicket: @formule.priceTicket, user_id: @formule.user_id }
    end

    assert_redirected_to formule_path(assigns(:formule))
  end

  test "should show formule" do
    get :show, id: @formule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formule
    assert_response :success
  end

  test "should update formule" do
    patch :update, id: @formule, formule: { description: @formule.description, id: @formule.id, nbTicket: @formule.nbTicket, price: @formule.price, priceTicket: @formule.priceTicket, user_id: @formule.user_id }
    assert_redirected_to formule_path(assigns(:formule))
  end

  test "should destroy formule" do
    assert_difference('Formule.count', -1) do
      delete :destroy, id: @formule
    end

    assert_redirected_to formules_path
  end
end
