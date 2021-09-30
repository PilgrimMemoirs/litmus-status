require 'rails_helper'

RSpec.describe Update, type: :model do
  describe "associations" do
    it { should belong_to(:incident) }
  end
end
