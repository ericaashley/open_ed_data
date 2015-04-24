class State < ActiveRecord::Base
  has_many :districts, foreign_key: "state_id"
  has_many :cities, foreign_key: "state_id"
  has_many :schools

  validates :ansi_id, presence: true
  validates :state_name, presence: true
  validates :state_abbrev, presence: true

  def data_structure(districts)
    data = Hash.new
    data["name"] = state_name
    data["children"] = Array.new
    districts.each do |district|
      district_hash = Hash.new
      district_hash["name"] = district.district_name
      district_hash["children"] = Array.new
      district.schools.each do |school|
        if school.member >= 0
          school_hash = Hash.new
          school_hash["name"] = school.schnam
          school_hash["size"] = school.member
          school_hash["school_id"] = school.id
          school_hash["district_id"] = school.district_id
          district_hash["children"] << school_hash
        end
      end
      data["children"] << district_hash
    end
    data.to_json
  end
end
