require 'test_helper'

class WeaponCardsControllerTest < ActionController::TestCase
  setup do
    @weapon_card = weapon_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weapon_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weapon_card" do
    assert_difference('WeaponCard.count') do
      post :create, weapon_card: @weapon_card.attributes
    end

    assert_redirected_to weapon_card_path(assigns(:weapon_card))
  end

  test "should show weapon_card" do
    get :show, id: @weapon_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @weapon_card
    assert_response :success
  end

  test "should update weapon_card" do
    put :update, id: @weapon_card, weapon_card: @weapon_card.attributes
    assert_redirected_to weapon_card_path(assigns(:weapon_card))
  end

  test "should destroy weapon_card" do
    assert_difference('WeaponCard.count', -1) do
      delete :destroy, id: @weapon_card
    end

    assert_redirected_to weapon_cards_path
  end
end
