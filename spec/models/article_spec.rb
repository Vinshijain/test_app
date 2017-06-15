require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "Validation" do
    it "should be invalid if title is missing" do
      FactoryGirl.build(:articel, title: nil).to_not be_valid
    end
  end
end
