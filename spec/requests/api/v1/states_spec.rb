require 'spec_helper'

describe "GET '/api/v1/states'" do
  it 'retrieves a list of states' do
    FactoryGirl.create_list(:state, 10)

    get api_v1_states_path

    expect(response).to be_success
    # json = JSON.parse(response.body)
    #
    # expect(json['states'].length).to eq(10)
  end
end

# describe "States API" do
#   # it 'retrieves a specific message' do
#   #   state = FactoryGirl.create(:state)
#   #   get "/api/v1/states/#{state.id}"
#   #
#   #   # test for the 200 status-code
#   #   expect(response).to be_success
#   #
#   #   # check that the message attributes are the same.
#   #   expect(json['content']).to eq(message.content)
#   #
#   #   # ensure that private attributes aren't serialized
#   #   expect(json['private_attr']).to eq(nil)
#   # end
# end
