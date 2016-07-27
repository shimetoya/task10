require 'test_helper'

class RaiwayStationsControllerTest < ActionController::TestCase
  setup do
    @raiway_station = raiway_stations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raiway_stations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raiway_station" do
    assert_difference('RaiwayStation.count') do
      post :create, raiway_station: { title: @raiway_station.title }
    end

    assert_redirected_to raiway_station_path(assigns(:raiway_station))
  end

  test "should show raiway_station" do
    get :show, id: @raiway_station
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raiway_station
    assert_response :success
  end

  test "should update raiway_station" do
    patch :update, id: @raiway_station, raiway_station: { title: @raiway_station.title }
    assert_redirected_to raiway_station_path(assigns(:raiway_station))
  end

  test "should destroy raiway_station" do
    assert_difference('RaiwayStation.count', -1) do
      delete :destroy, id: @raiway_station
    end

    assert_redirected_to raiway_stations_path
  end
end
