require 'spec_helper'

describe "GET '/api/v1/state/:id/districts'" do
  it 'retrieves a list of districts' do
    FactoryGirl.create(:district)
    state_id = State.first.id

    get api_v1_state_districts_path(state_id)

    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json['districts'].length).to eq(1)
  end
end
