require "application_system_test_case"

class BoardsTest < ApplicationSystemTestCase
  setup do
    @board = boards(:one)
  end

  test "visiting the index" do
    visit boards_url
    assert_selector "h1", text: "Boards"
  end

  test "should create board" do
    visit boards_url
    click_on "New board"

    fill_in "Board length", with: @board.board_length
    fill_in "Board name", with: @board.board_name
    fill_in "Board type", with: @board.board_type
    fill_in "Board volume", with: @board.board_volume
    fill_in "Current price", with: @board.current_price
    fill_in "Last used date", with: @board.last_used_date
    fill_in "Purchase date", with: @board.purchase_date
    fill_in "Purchase price", with: @board.purchase_price
    click_on "Create Board"

    assert_text "Board was successfully created"
    click_on "Back"
  end

  test "should update Board" do
    visit board_url(@board)
    click_on "Edit this board", match: :first

    fill_in "Board length", with: @board.board_length
    fill_in "Board name", with: @board.board_name
    fill_in "Board type", with: @board.board_type
    fill_in "Board volume", with: @board.board_volume
    fill_in "Current price", with: @board.current_price
    fill_in "Last used date", with: @board.last_used_date
    fill_in "Purchase date", with: @board.purchase_date
    fill_in "Purchase price", with: @board.purchase_price
    click_on "Update Board"

    assert_text "Board was successfully updated"
    click_on "Back"
  end

  test "should destroy Board" do
    visit board_url(@board)
    click_on "Destroy this board", match: :first

    assert_text "Board was successfully destroyed"
  end
end
