class SchoolLevel < ActiveRecord::Base
  has_many :schools, foreign_key: "level"

  validates :nces_id, presence: true
  validates :school_level_name, presence: true
end
