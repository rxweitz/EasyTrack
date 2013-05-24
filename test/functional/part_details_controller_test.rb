require 'test_helper'

class PartDetailsControllerTest < ActionController::TestCase
  setup do
    @part_detail = part_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:part_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create part_detail" do
    assert_difference('PartDetail.count') do
      post :create, part_detail: { location_id: @part_detail.location_id, part_id: @part_detail.part_id, part_status_id: @part_detail.part_status_id }
    end

    assert_redirected_to part_detail_path(assigns(:part_detail))
  end

  test "should show part_detail" do
    get :show, id: @part_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @part_detail
    assert_response :success
  end

  test "should update part_detail" do
    put :update, id: @part_detail, part_detail: { location_id: @part_detail.location_id, part_id: @part_detail.part_id, part_status_id: @part_detail.part_status_id }
    assert_redirected_to part_detail_path(assigns(:part_detail))
  end

  test "should destroy part_detail" do
    assert_difference('PartDetail.count', -1) do
      delete :destroy, id: @part_detail
    end

    assert_redirected_to part_details_path
  end
end
