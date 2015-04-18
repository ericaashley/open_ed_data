require 'rails_helper'

RSpec.describe District, type: :model do
  it { should belong_to(:state) }
  it { should have_many(:schools) }
  it { should validate_presence_of(:nces_id) }
  it { should validate_presence_of(:district_name) }
  it { should validate_presence_of(:state_id) }
end
