class SchoolMagnet < ActiveRecord::Base
  has_many :schools, foreign_key: "magnet"

  validates :school_magnet_id, presence: true
  validates :school_magnet_name, presence: true
end
