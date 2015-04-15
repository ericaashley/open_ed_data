class School < ActiveRecord::Base
  belongs_to :state, foreign_key: "fipst"
  belongs_to :district, foreign_key: "leaid"
  belongs_to :city, foreign_key: "lcity"
  belongs_to :school_level, foreign_key: "level"
  belongs_to :school_type, foreign_key: "type"
  belongs_to :school_charter, foreign_key: "chartr"
  belongs_to :school_magnet, foreign_key: "magnet"
  belongs_to :school_title_one, foreign_key: "titlei"

  validates :ncessch, presence: true
end
