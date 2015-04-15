require 'rails_helper'

RSpec.describe School, type: :model do
  it { should belong_to(:state) }
  it { should belong_to(:district) }
  it { should belong_to(:city) }
  it { should belong_to(:school_level) }
  it { should belong_to(:school_type) }
  it { should belong_to(:school_charter) }
  it { should belong_to(:school_magnet) }
  it { should belong_to(:school_title_one) }
  it { should validate_presence_of(:ncessch) }
end
