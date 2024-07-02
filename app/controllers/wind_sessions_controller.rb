class WindSessionsController < ApplicationController
  before_action :set_wind_session, only: %i[ show edit update destroy ]

  # GET /wind_sessions or /wind_sessions.json
  def index
    @wind_sessions = WindSession.all
  end

  # GET /wind_sessions/1 or /wind_sessions/1.json
  def show
  end

  # GET /wind_sessions/new
  def new
    @wind_session = WindSession.new
  end

  # GET /wind_sessions/1/edit
  def edit
  end

  # POST /wind_sessions or /wind_sessions.json
  def create
    @wind_session = WindSession.new(wind_session_params)

    respond_to do |format|
      if @wind_session.save
        format.html { redirect_to wind_session_url(@wind_session), notice: "Wind session was successfully created." }
        format.json { render :show, status: :created, location: @wind_session }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wind_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wind_sessions/1 or /wind_sessions/1.json
  def update
    respond_to do |format|
      if @wind_session.update(wind_session_params)
        format.html { redirect_to wind_session_url(@wind_session), notice: "Wind session was successfully updated." }
        format.json { render :show, status: :ok, location: @wind_session }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wind_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wind_sessions/1 or /wind_sessions/1.json
  def destroy
    @wind_session.destroy!

    respond_to do |format|
      format.html { redirect_to wind_sessions_url, notice: "Wind session was successfully destroyed." }
      format.json { head :no_content }
    end
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
