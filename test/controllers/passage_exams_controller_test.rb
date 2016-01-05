require 'test_helper'

class PassageExamsControllerTest < ActionController::TestCase
  setup do
    @passage_exam = passage_exams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:passage_exams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create passage_exam" do
    assert_difference('PassageExam.count') do
      post :create, passage_exam: { examan_id: @passage_exam.examan_id, resultat: @passage_exam.resultat, user_id: @passage_exam.user_id }
    end

    assert_redirected_to passage_exam_path(assigns(:passage_exam))
  end

  test "should show passage_exam" do
    get :show, id: @passage_exam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @passage_exam
    assert_response :success
  end

  test "should update passage_exam" do
    patch :update, id: @passage_exam, passage_exam: { examan_id: @passage_exam.examan_id, resultat: @passage_exam.resultat, user_id: @passage_exam.user_id }
    assert_redirected_to passage_exam_path(assigns(:passage_exam))
  end

  test "should destroy passage_exam" do
    assert_difference('PassageExam.count', -1) do
      delete :destroy, id: @passage_exam
    end

    assert_redirected_to passage_exams_path
  end
end
