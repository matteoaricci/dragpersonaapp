require 'rails_helper'

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

RSpec.describe City, type: :model do
  
  it "city has a name" do 
    expect(subject.attributes).to include("name")
  end

  describe "city has many users" do 
    it {should have_many(:users)}
  end
end
