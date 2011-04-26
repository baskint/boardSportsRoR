require 'test_helper'

class BoardSportsControllerTest < ActionController::TestCase
  setup do
    @board_sport = board_sports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:board_sports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create board_sport" do
    assert_difference('BoardSport.count') do
      post :create, :board_sport => @board_sport.attributes
    end

    assert_redirected_to board_sport_path(assigns(:board_sport))
  end

  test "should show board_sport" do
    get :show, :id => @board_sport.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @board_sport.to_param
    assert_response :success
  end

  test "should update board_sport" do
    put :update, :id => @board_sport.to_param, :board_sport => @board_sport.attributes
    assert_redirected_to board_sport_path(assigns(:board_sport))
  end

  test "should destroy board_sport" do
    assert_difference('BoardSport.count', -1) do
      delete :destroy, :id => @board_sport.to_param
    end

    assert_redirected_to board_sports_path
  end
end
