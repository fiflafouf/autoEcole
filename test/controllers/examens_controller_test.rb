require 'test_helper'

class ExamensControllerTest < ActionController::TestCase
  setup do
    @examen = examens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:examens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create examen" do
    assert_difference('Examens.count') do
      post :create, examen: { date: @examen.date, type: @examen.type }
    end

    assert_redirected_to examen_path(assigns(:examen))
  end

  test "should show examen" do
    get :show, id: @examen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @examen
    assert_response :success
  end

  test "should update examen" do
    patch :update, id: @examen, examen: { date: @examen.date, type: @examen.type }
    assert_redirected_to examen_path(assigns(:examen))
  end

  test "should destroy examen" do
    assert_difference('Examens.count', -1) do
      delete :destroy, id: @examen
    end

    assert_redirected_to examens_index_path
  end
end
