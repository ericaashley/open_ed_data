require 'rails_helper'

RSpec.describe City, type: :model do
  it { should belong_to(:state) }
  it { should have_many(:schools) }
  it { should validate_presence_of(:city_name) }
  it { should validate_presence_of(:state_id) }
end
