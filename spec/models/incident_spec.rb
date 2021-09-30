require 'rails_helper'

RSpec.describe Incident, type: :model do
  describe "validations" do
    it{ is_expected.to validate_presence_of :title }
    it{ is_expected.to validate_presence_of :impact }
    it{ is_expected.to validate_presence_of :happended_at }
  end
end
