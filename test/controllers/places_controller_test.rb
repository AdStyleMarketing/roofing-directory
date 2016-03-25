require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
  setup do
    @place = places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place" do
    assert_difference('Place.count') do
      post :create, place: { about: @place.about, address_1: @place.address_1, address_2: @place.address_2, business_name: @place.business_name, city: @place.city, claimed: @place.claimed, phone_number: @place.phone_number, state: @place.state, user_id: @place.user_id, website: @place.website, zip_code: @place.zip_code }
    end

    assert_redirected_to place_path(assigns(:place))
  end

  test "should show place" do
    get :show, id: @place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place
    assert_response :success
  end

  test "should update place" do
    patch :update, id: @place, place: { about: @place.about, address_1: @place.address_1, address_2: @place.address_2, business_name: @place.business_name, city: @place.city, claimed: @place.claimed, phone_number: @place.phone_number, state: @place.state, user_id: @place.user_id, website: @place.website, zip_code: @place.zip_code }
    assert_redirected_to place_path(assigns(:place))
  end

  test "should destroy place" do
    assert_difference('Place.count', -1) do
      delete :destroy, id: @place
    end

    assert_redirected_to places_path
  end
end
