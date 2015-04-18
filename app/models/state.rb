class State < ActiveRecord::Base
  has_many :districts, foreign_key: "state_id"
  has_many :cities, foreign_key: "state_id"
  has_many :schools_in_districts, class_name: "School", through: :districts,
            foreign_key: "ansi_id"
  has_many :schools_in_cities, class_name: "School", through: :cities,
            foreign_key: "city_name"

  validates :ansi_id, presence: true
  validates :state_name, presence: true
  validates :state_abbrev, presence: true
end
