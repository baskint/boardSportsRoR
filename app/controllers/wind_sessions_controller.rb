class WindSessionsController < ApplicationController
  before_action :set_wind_session, only: %i[ show edit update destroy ]

  # GET /wind_sessions
  def index
    @wind_sessions = WindSession.all
    logger.debug "WindSessionsController#index: Found #{@wind_sessions.count} wind sessions"
  end

  # GET /wind_sessions/1
  def show
  end

  # GET /wind_sessions/new
  def new
    @wind_session = WindSession.new
  end

  # GET /wind_sessions/1/edit
  def edit
  end

  # POST /wind_sessions
  def create
    @wind_session = WindSession.new(wind_session_params)

    if @wind_session.save
      redirect_to @wind_session, notice: 'Wind session was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wind_sessions/1
  def update
    if @wind_session.update(wind_session_params)
      redirect_to @wind_session, notice: 'Wind session was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /wind_sessions/1
  def destroy
    @wind_session.destroy
    redirect_to wind_sessions_url, notice: 'Wind session was successfully destroyed.'
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
