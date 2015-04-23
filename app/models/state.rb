class State < ActiveRecord::Base
  has_many :districts, foreign_key: "state_id"
  has_many :cities, foreign_key: "state_id"
  has_many :schools

  validates :ansi_id, presence: true
  validates :state_name, presence: true
  validates :state_abbrev, presence: true

  def self.data_struct
    @states = State.all
    data = Hash.new
    data["name"] = "All States"
    data["children"] = Array.new
    @states.each do |state|
      state_hash = Hash.new
      state_hash["name"] = state.state_name
      state_hash["children"] = Array.new
      state.districts.each do |district|
        district_hash = Hash.new
        district_hash["name"] = district.district_name
        district_hash["size"] = rand(100)
        state_hash["children"] << district_hash
      end
      data["children"] << state_hash
    end
    data
  end

  def data_structure
    @districts = districts
    data = Hash.new
    data["name"] = state_name
    data["children"] = Array.new
    @districts.each do |district|
      district_hash = Hash.new
      district_hash["name"] = district.district_name
      district_hash["children"] = Array.new
      district.schools.each do |school|
        if school.member >= 0
          school_hash = Hash.new
          school_hash["name"] = school.schnam
          school_hash["size"] = school.member
          district_hash["children"] << school_hash
        end
      end
      data["children"] << district_hash
    end
    data.to_json
  end
end
