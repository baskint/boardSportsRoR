require "application_system_test_case"

class WindSessionsTest < ApplicationSystemTestCase
  setup do
    @wind_session = wind_sessions(:one)
  end

  test "visiting the index" do
    visit wind_sessions_url
    assert_selector "h1", text: "Wind sessions"
  end

  test "should create wind session" do
    visit wind_sessions_url
    click_on "New wind session"

    fill_in "Duration hours", with: @wind_session.duration_hours
    fill_in "Location", with: @wind_session.location
    fill_in "Name", with: @wind_session.name
    fill_in "Notes", with: @wind_session.notes
    fill_in "Session date", with: @wind_session.session_date
    click_on "Create Wind session"

    assert_text "Wind session was successfully created"
    click_on "Back"
  end

  test "should update Wind session" do
    visit wind_session_url(@wind_session)
    click_on "Edit this wind session", match: :first

    fill_in "Duration hours", with: @wind_session.duration_hours
    fill_in "Location", with: @wind_session.location
    fill_in "Name", with: @wind_session.name
    fill_in "Notes", with: @wind_session.notes
    fill_in "Session date", with: @wind_session.session_date
    click_on "Update Wind session"

    assert_text "Wind session was successfully updated"
    click_on "Back"
  end

  test "should destroy Wind session" do
    visit wind_session_url(@wind_session)
    click_on "Destroy this wind session", match: :first

    assert_text "Wind session was successfully destroyed"
  end
end
