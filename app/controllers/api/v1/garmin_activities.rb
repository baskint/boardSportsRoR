module API
  module V1
    class GarminActivities < Grape::API
      include API::V1::Defaults

      resource :garmin_activities do
        desc "Return all activities"
        get "" do
          GarminActivity.all
        end
        desc "Return an activity"
        params do
          requires :id, type: String, desc: "ID of the user"
        end
        get ":id" do
          GarminActivity.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end