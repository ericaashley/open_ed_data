require 'rails_helper'

RSpec.describe State, type: :model do
  it { should have_many(:districts) }
  it { should have_many(:cities) }
  it { should have_many(:schools_in_districts).through(:districts) }
  it { should have_many(:schools_in_cities).through(:cities) }
  it { should validate_presence_of(:ansi_id) }
  it { should validate_presence_of(:state_name) }
  it { should validate_presence_of(:state_abbrev) }
end
