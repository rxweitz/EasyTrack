require 'test_helper'

class PartStatusesControllerTest < ActionController::TestCase
  setup do
    @part_status = part_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:part_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create part_status" do
    assert_difference('PartStatus.count') do
      post :create, part_status: { part_status: @part_status.part_status, status_description: @part_status.status_description }
    end

    assert_redirected_to part_status_path(assigns(:part_status))
  end

  test "should show part_status" do
    get :show, id: @part_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @part_status
    assert_response :success
  end

  test "should update part_status" do
    put :update, id: @part_status, part_status: { part_status: @part_status.part_status, status_description: @part_status.status_description }
    assert_redirected_to part_status_path(assigns(:part_status))
  end

  test "should destroy part_status" do
    assert_difference('PartStatus.count', -1) do
      delete :destroy, id: @part_status
    end

    assert_redirected_to part_statuses_path
  end
end
