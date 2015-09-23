require 'test_helper'

class StuRegSemestersControllerTest < ActionController::TestCase
  setup do
    @stu_reg_semester = stu_reg_semesters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stu_reg_semesters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stu_reg_semester" do
    assert_difference('StuRegSemester.count') do
      post :create, stu_reg_semester: { semester_id: @stu_reg_semester.semester_id, student_id: @stu_reg_semester.student_id }
    end

    assert_redirected_to stu_reg_semester_path(assigns(:stu_reg_semester))
  end

  test "should show stu_reg_semester" do
    get :show, id: @stu_reg_semester
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stu_reg_semester
    assert_response :success
  end

  test "should update stu_reg_semester" do
    patch :update, id: @stu_reg_semester, stu_reg_semester: { semester_id: @stu_reg_semester.semester_id, student_id: @stu_reg_semester.student_id }
    assert_redirected_to stu_reg_semester_path(assigns(:stu_reg_semester))
  end

  test "should destroy stu_reg_semester" do
    assert_difference('StuRegSemester.count', -1) do
      delete :destroy, id: @stu_reg_semester
    end

    assert_redirected_to stu_reg_semesters_path
  end
end
