require 'rails_helper'

RSpec.describe ServiceIncident, type: :model do
  describe "associations" do
      it { should belong_to(:service) }
      it { should belong_to(:incident) }
  end
end
