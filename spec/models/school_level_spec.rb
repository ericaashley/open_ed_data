require 'rails_helper'

RSpec.describe SchoolLevel, type: :model do
  it { should have_many(:schools) }
  it { should validate_presence_of(:school_level_id) }
  it { should validate_presence_of(:school_level_name) }
end
