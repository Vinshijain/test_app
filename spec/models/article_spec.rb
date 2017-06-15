require 'rails_helper'

RSpec.describe Article, type: :model do
  describe "Validation" do
    it "should be invalid if title is missing" do
      expect(FactoryGirl.build(:article, title: nil)).to_not be_valid
    end
    it "should be invalid if description is missing" do
      expect(FactoryGirl.build(:article, description: nil)).to_not be_valid
    end
    it "should be valid if all params are present" do
      expect(FactoryGirl.build(:article)).to be_valid
    end
  end
end
