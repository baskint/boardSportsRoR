class WindSessionsController < ApplicationController
  before_action :set_wind_session, only: %i[ show update destroy ]

  # GET /wind_sessions
  def index
    @wind_sessions = WindSession.all

    render json: @wind_sessions
  end

  # GET /wind_sessions/1
  def show
    render json: @wind_session
  end

  # POST /wind_sessions
  def create
    @wind_session = WindSession.new(wind_session_params)

    if @wind_session.save
      render json: @wind_session, status: :created, location: @wind_session
    else
      render json: @wind_session.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wind_sessions/1
  def update
    if @wind_session.update(wind_session_params)
      render json: @wind_session
    else
      render json: @wind_session.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wind_sessions/1
  def destroy
    @wind_session.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wind_session
      @wind_session = WindSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wind_session_params
      params.require(:wind_session).permit(:name, :location, :session_date, :duration_hours, :notes)
    end
end
