require 'rails_helper'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

RSpec.describe Talent, type: :model do

  it "talent has both a name and description" do 
    expect(subject.attributes).to include("name")
    expect(subject.attributes).to include("description")
  end

  describe "talent should have many usertalents" do 
    it { should have_many(:user_talents)}
  end

  describe "talent should have many users" do 
    it {should have_many(:users) }
  end
end
