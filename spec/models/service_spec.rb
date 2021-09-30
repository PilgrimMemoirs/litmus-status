require 'rails_helper'

RSpec.describe Service, type: :model do
  describe "validations" do
    it{ is_expected.to validate_presence_of :name }
    it{ is_expected.to validate_presence_of :operational }
    it { should validate_uniqueness_of(:name) }
  end
end
