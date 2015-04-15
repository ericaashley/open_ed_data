require 'rails_helper'

RSpec.describe SchoolTitleOne, type: :model do
  it { should have_many(:schools) }
  it { should validate_presence_of(:school_title_one_id) }
  it { should validate_presence_of(:school_title_one_eligible) }
  it { should validate_presence_of(:school_title_one_program) }
end
