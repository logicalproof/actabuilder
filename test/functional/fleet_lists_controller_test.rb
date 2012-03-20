require 'test_helper'

class FleetListsControllerTest < ActionController::TestCase
  setup do
    @fleet_list = fleet_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fleet_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fleet_list" do
    assert_difference('FleetList.count') do
      post :create, fleet_list: @fleet_list.attributes
    end

    assert_redirected_to fleet_list_path(assigns(:fleet_list))
  end

  test "should show fleet_list" do
    get :show, id: @fleet_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fleet_list
    assert_response :success
  end

  test "should update fleet_list" do
    put :update, id: @fleet_list, fleet_list: @fleet_list.attributes
    assert_redirected_to fleet_list_path(assigns(:fleet_list))
  end

  test "should destroy fleet_list" do
    assert_difference('FleetList.count', -1) do
      delete :destroy, id: @fleet_list
    end

    assert_redirected_to fleet_lists_path
  end
end
