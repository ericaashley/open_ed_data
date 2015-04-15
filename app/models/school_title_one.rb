class SchoolTitleOne < ActiveRecord::Base
  has_many :schools, foreign_key: "titlei"

  validates :school_title_one_id, presence: true
  validates :school_title_one_name, presence: true
end
