require 'test_helper'

class ShipsControllerTest < ActionController::TestCase
  setup do
    @ship = ships(:one)
    @update = {name: 'Mulligan Cruiser', cost: 125, image_url: 'sfklingond6_2.jpg', empire_image: 'Klingoninsignia.jpg'}
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ship" do
    assert_difference('Ship.count') do
      post :create, ship: @update
    end

    assert_redirected_to ship_path(assigns(:ship))
  end

  test "should show ship" do
    get :show, id: @ship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ship
    assert_response :success
  end

  test "should update ship" do
    put :update, id: @ship, ship: @update
    assert_redirected_to ship_path(assigns(:ship))
  end

  test "should destroy ship" do
    assert_difference('Ship.count', -1) do
      delete :destroy, id: @ship
    end

    assert_redirected_to ships_path
  end
end
