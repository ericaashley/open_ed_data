class StateSerializer < ActiveModel::Serializer
  attributes :id, :state_name, :state_abbrev, :district_count, :school_count

  def district_count
    object.districts.count
  end

  def school_count
    object.schools.where("member > 0").count
  end
end
