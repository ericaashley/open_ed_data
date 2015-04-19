class City < ActiveRecord::Base
  belongs_to :state
  has_many :schools, foreign_key: "city_id"

  validates :city_name, presence: true
  validates :state_id, presence: true
end
