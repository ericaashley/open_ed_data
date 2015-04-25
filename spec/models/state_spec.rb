require 'rails_helper'
require 'json'

RSpec.describe State, type: :model do
  it { should have_many(:districts) }
  it { should have_many(:cities) }
  it { should have_many(:schools) }
  it { should validate_presence_of(:ansi_id) }
  it { should validate_presence_of(:state_name) }
  it { should validate_presence_of(:state_abbrev) }

  it "should return a data structure, state > district > sch. level > school" do
    state = FactoryGirl.create(:state, id: 1)
    district = [FactoryGirl.create(:district, id: 2, state_id: 1)]
    FactoryGirl.create(:school_level, id: 1, school_level_name: "Primary")
    FactoryGirl.create(:school, id: 3, district_id: 2, state_id: 1,
                                schnam: "SchoolName", level: 1, member: 200)

    data = JSON.parse(state.data_structure(district))

    state_name = data["name"]
    district_name = data["children"][0]["name"]
    school_lvl = data["children"][0]["children"][0]["name"]
    school_name = data["children"][0]["children"][0]["children"][0]["name"]
    school_size = data["children"][0]["children"][0]["children"][0]["size"]
    sch_id = data["children"][0]["children"][0]["children"][0]["school_id"]
    dist_id = data["children"][0]["children"][0]["children"][0]["district_id"]

    expect(state_name).to eq("State1")
    expect(district_name).to eq("District1")
    expect(school_lvl).to eq("Primary")
    expect(school_name).to eq("SchoolName")
    expect(school_size).to eq(200)
    expect(sch_id).to eq(3)
    expect(dist_id).to eq(2)
  end
end
