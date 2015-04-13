require 'rails_helper'

RSpec.describe Identity, type: :model do
  it { should validate_presence_of(:uid) }
  it { should validate_presence_of(:provider) }
  it { should validate_uniqueness_of(:uid).scoped_to(:provider) }
end
