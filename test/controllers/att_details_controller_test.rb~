require 'test_helper'

class AttDetailsControllerTest < ActionController::TestCase
  setup do
    @att_detail = att_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:att_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create att_detail" do
    assert_difference('AttDetail.count') do
      post :create, att_detail: { att_master_id: @att_detail.att_master_id, status: @att_detail.status, student_id: @att_detail.student_id }
    end

    assert_redirected_to att_detail_path(assigns(:att_detail))
  end

  test "should show att_detail" do
    get :show, id: @att_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @att_detail
    assert_response :success
  end

  test "should update att_detail" do
    patch :update, id: @att_detail, att_detail: { att_master_id: @att_detail.att_master_id, status: @att_detail.status, student_id: @att_detail.student_id }
    assert_redirected_to att_detail_path(assigns(:att_detail))
  end

  test "should destroy att_detail" do
    assert_difference('AttDetail.count', -1) do
      delete :destroy, id: @att_detail
    end

    assert_redirected_to att_details_path
  end
end
