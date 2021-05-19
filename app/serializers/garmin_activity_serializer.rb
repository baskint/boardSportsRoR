class GarminActivitySerializer < ActiveModel::Serializer
  attributes :activity_type, :date_time, :distance
end