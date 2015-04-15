class City < ActiveRecord::Base
  belongs_to :state
  has_many :schools, foreign_key: "lcity"

  validates :city_name, presence: true
  validates :state_id, presence: true
end
