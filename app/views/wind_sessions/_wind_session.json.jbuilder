json.extract! wind_session, :id, :name, :location, :session_date, :duration_hours, :notes, :created_at, :updated_at
json.url wind_session_url(wind_session, format: :json)
