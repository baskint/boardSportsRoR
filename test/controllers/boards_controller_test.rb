require "test_helper"

class BoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @board = boards(:one)
  end

  test "should get index" do
    get boards_url, as: :json
    assert_response :success
  end

  test "should create board" do
    assert_difference("Board.count") do
      post boards_url, params: { board: { board_length: @board.board_length, board_name: @board.board_name, board_type: @board.board_type, board_volume: @board.board_volume, current_price: @board.current_price, last_used_date: @board.last_used_date, purchase_date: @board.purchase_date, purchase_price: @board.purchase_price } }, as: :json
    end

    assert_response :created
  end

  test "should show board" do
    get board_url(@board), as: :json
    assert_response :success
  end

  test "should update board" do
    patch board_url(@board), params: { board: { board_length: @board.board_length, board_name: @board.board_name, board_type: @board.board_type, board_volume: @board.board_volume, current_price: @board.current_price, last_used_date: @board.last_used_date, purchase_date: @board.purchase_date, purchase_price: @board.purchase_price } }, as: :json
    assert_response :success
  end

  test "should destroy board" do
    assert_difference("Board.count", -1) do
      delete board_url(@board), as: :json
    end

    assert_response :no_content
  end
end
