class DistrictSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :district_name
end
