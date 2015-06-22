require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, params: { game: { state: @game.state } }
    end

    assert_response 201
  end

  test "should show game" do
    get :show, params: { id: @game }
    assert_response :success
  end

  test "should update game" do
    patch :update, params: { id: @game, game: { state: @game.state } }
    assert_response 200
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, params: { id: @game }
    end

    assert_response 204
  end
end
