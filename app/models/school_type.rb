class SchoolType < ActiveRecord::Base
  has_many :schools, foreign_key: "type"

  validates :nces_id, presence: true
  validates :school_type_name, presence: true
end
