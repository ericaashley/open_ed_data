require 'rails_helper'

RSpec.describe SchoolType, type: :model do
  it { should have_many(:schools) }
  it { should validate_presence_of(:nces_id) }
  it { should validate_presence_of(:school_type_name) }
end
