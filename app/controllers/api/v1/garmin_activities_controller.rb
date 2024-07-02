module Api
  module V1
    class GarminActivitiesController < ApplicationController
      before_action :set_garmin_activity, only: [:show, :update, :destroy]

      # GET /api/v1/garmin_activities
      def index
        @garmin_activities = GarminActivity.all
        render json: @garmin_activities
      end

      # GET /api/v1/garmin_activities/:id
      def show
        render json: @garmin_activity
      end

      # POST /api/v1/garmin_activities
      def create
        @garmin_activity = GarminActivity.new(garmin_activity_params)

        if @garmin_activity.save
          render json: @garmin_activity, status: :created
        else
          render json: @garmin_activity.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /api/v1/garmin_activities/:id
      def update
        if @garmin_activity.update(garmin_activity_params)
          render json: @garmin_activity
        else
          render json: @garmin_activity.errors, status: :unprocessable_entity
        end
      end

      # DELETE /api/v1/garmin_activities/:id
      def destroy
        @garmin_activity.destroy
      end

      private

      def set_garmin_activity
        @garmin_activity = GarminActivity.find(params[:id])
      end

      def garmin_activity_params
        params.require(:garmin_activity).permit(:activity_type, :date_time, :location, :distance, :calories, :duration, :avg_hr, :max_hr, :avg_speed, :max_speed, :avg_pace, :max_pace, :avg_bike_cadence, :max_bike_cadence, :min_temp, :climb_time, :notes)
      end
    end
  end
end
