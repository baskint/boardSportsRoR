require "test_helper"

class WindSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wind_session = wind_sessions(:one)
  end

  test "should get index" do
    get wind_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_wind_session_url
    assert_response :success
  end

  test "should create wind_session" do
    assert_difference("WindSession.count") do
      post wind_sessions_url, params: { wind_session: { duration_hours: @wind_session.duration_hours, location: @wind_session.location, name: @wind_session.name, notes: @wind_session.notes, session_date: @wind_session.session_date } }
    end

    assert_redirected_to wind_session_url(WindSession.last)
  end

  test "should show wind_session" do
    get wind_session_url(@wind_session)
    assert_response :success
  end

  test "should get edit" do
    get edit_wind_session_url(@wind_session)
    assert_response :success
  end

  test "should update wind_session" do
    patch wind_session_url(@wind_session), params: { wind_session: { duration_hours: @wind_session.duration_hours, location: @wind_session.location, name: @wind_session.name, notes: @wind_session.notes, session_date: @wind_session.session_date } }
    assert_redirected_to wind_session_url(@wind_session)
  end

  test "should destroy wind_session" do
    assert_difference("WindSession.count", -1) do
      delete wind_session_url(@wind_session)
    end

    assert_redirected_to wind_sessions_url
  end
end
