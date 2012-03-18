require 'test_helper'

class WeaponsControllerTest < ActionController::TestCase
  setup do
    @weapon = weapons(:one)
    @update = {name: 'Mulligan Cannon', range: 24, special: 'Devastating +2'}
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weapons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weapon" do
    assert_difference('Weapon.count') do
      post :create, weapon: @update
    end

    assert_redirected_to weapon_path(assigns(:weapon))
  end

  test "should show weapon" do
    get :show, id: @weapon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weapon
    assert_response :success
  end

  test "should update weapon" do
    put :update, id: @weapon, weapon: @update
    assert_redirected_to weapon_path(assigns(:weapon))
  end

  test "should destroy weapon" do
    assert_difference('Weapon.count', -1) do
      delete :destroy, id: @weapon
    end

    assert_redirected_to weapons_path
  end
end
