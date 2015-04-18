require 'rails_helper'

RSpec.describe SchoolMagnet, type: :model do
  it { should have_many(:schools) }
  it { should validate_presence_of(:nces_id) }
  it { should validate_presence_of(:school_magnet_name) }
end
