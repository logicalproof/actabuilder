require 'test_helper'

class AssignedShipsControllerTest < ActionController::TestCase
  setup do
    @assigned_ship = assigned_ships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assigned_ships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assigned_ship" do
    assert_difference('AssignedShip.count') do
      post :create, ship_id: ships(:cruiser).id
    end

    assert_redirected_to store_index_path
  end

  test "should show assigned_ship" do
    get :show, id: @assigned_ship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assigned_ship
    assert_response :success
  end

  test "should update assigned_ship" do
    put :update, id: @assigned_ship, assigned_ship: @assigned_ship.attributes
    assert_redirected_to assigned_ship_path(assigns(:assigned_ship))
  end

  test "should destroy assigned_ship" do
    assert_difference('AssignedShip.count', -1) do
      delete :destroy, id: @assigned_ship
    end

    assert_redirected_to assigned_ships_path
  end
end
