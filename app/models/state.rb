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

      school_levels_per_district = Array.new

      district.schools.each do |school|
        if school.member >= 0
          if !school_levels_per_district.include?(school.school_level)
            school_level_hash = Hash.new
            school_level_hash["name"] = school.school_level.school_level_name
            school_level_hash["children"] = Array.new

            school_levels_per_district << school.school_level
            district_hash["children"] << school_level_hash
          end

          school_hash = Hash.new
          school_hash["name"] = school.schnam
          school_hash["size"] = school.member
          school_hash["school_id"] = school.id
          school_hash["district_id"] = school.district_id
          district_hash["children"].each do |sch_level|
            if sch_level["name"] == school.school_level.school_level_name
              sch_level["children"] << school_hash
            end
          end
        end
      end
      data["children"] << district_hash
    end
    data.to_json
  end
end
