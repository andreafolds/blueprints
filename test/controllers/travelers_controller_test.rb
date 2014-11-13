require 'test_helper'

class TravelersControllerTest < ActionController::TestCase
  setup do
    @traveler = travelers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:travelers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create traveler" do
    assert_difference('Traveler.count') do
      post :create, traveler: { age: @traveler.age, city: @traveler.city, country: @traveler.country, destination: @traveler.destination, duration_of_travel: @traveler.duration_of_travel, name: @traveler.name, origin: @traveler.origin, state: @traveler.state }
    end

    assert_redirected_to traveler_path(assigns(:traveler))
  end

  test "should show traveler" do
    get :show, id: @traveler
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @traveler
    assert_response :success
  end

  test "should update traveler" do
    patch :update, id: @traveler, traveler: { age: @traveler.age, city: @traveler.city, country: @traveler.country, destination: @traveler.destination, duration_of_travel: @traveler.duration_of_travel, name: @traveler.name, origin: @traveler.origin, state: @traveler.state }
    assert_redirected_to traveler_path(assigns(:traveler))
  end

  test "should destroy traveler" do
    assert_difference('Traveler.count', -1) do
      delete :destroy, id: @traveler
    end

    assert_redirected_to travelers_path
  end
end
