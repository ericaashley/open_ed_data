class School < ActiveRecord::Base
  belongs_to :state, foreign_key: "state_id"
  belongs_to :district, foreign_key: "district_id"
  belongs_to :city, foreign_key: "city_id"
  belongs_to :school_level, foreign_key: "level"
  belongs_to :school_type, foreign_key: "sch_type"
  belongs_to :school_charter, foreign_key: "chartr"
  belongs_to :school_magnet, foreign_key: "magnet"
  belongs_to :school_title_one, foreign_key: "titlei"

  validates :ncessch, presence: true
  validates :district_id, presence: true
  validates :city_id, presence: true
  validates :state_id, presence: true
end
