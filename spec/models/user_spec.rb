require 'spec_helper'
require 'factory_girl_rails'

RSpec.describe User do


  it "has a valid factory" do
    expect(FactoryGirl.create(:user)).to be_valid
  end

  it 'is invalid without a firstname' do
    expect(FactoryGirl.build(:user, first_name: nil)).to_not be_valid
  end

  it 'is invalid without a lastname' do
    expect(FactoryGirl.build(:user, last_name: nil)).to_not be_valid
  end

  it 'is invalid without an email' do
    expect(FactoryGirl.build(:user, email: nil)).to_not be_valid
  end

  it "returns a user's full name as a string" do
    user = FactoryGirl.create(:user, first_name: "John", last_name: "Smith")
    expect(user.name).to eq("John Smith")
  end
end