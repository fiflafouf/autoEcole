require 'test_helper'

class UsersExamensControllerTest < ActionController::TestCase
  setup do
    @users_examen = users_examens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users_examens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create users_examen" do
    assert_difference('UsersExamens.count') do
      post :create, users_examen: { examen_id: @users_examen.examen_id, passer: @users_examen.passer, score: @users_examen.score, user_id: @users_examen.user_id }
    end

    assert_redirected_to users_examen_path(assigns(:users_examen))
  end

  test "should show users_examen" do
    get :show, id: @users_examen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @users_examen
    assert_response :success
  end

  test "should update users_examen" do
    patch :update, id: @users_examen, users_examen: { examen_id: @users_examen.examen_id, passer: @users_examen.passer, score: @users_examen.score, user_id: @users_examen.user_id }
    assert_redirected_to users_examen_path(assigns(:users_examen))
  end

  test "should destroy users_examen" do
    assert_difference('UsersExamens.count', -1) do
      delete :destroy, id: @users_examen
    end

    assert_redirected_to users_examens_index_path
  end
end
