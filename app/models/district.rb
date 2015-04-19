class District < ActiveRecord::Base
  belongs_to :state
  has_many :schools, foreign_key: "district_id"

  validates :nces_id, presence: true
  validates :district_name, presence: true
  validates :state_id, presence: true
end
