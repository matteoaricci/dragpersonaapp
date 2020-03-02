require 'rails_helper'

RSpec.describe UserTalent, type: :model do
  
    describe "User Talent Relationship" do 
      before do 
        @city = City.find_or_create_by(name: "Annapolis")
        @user = User.find_or_create_by(name: "Matt", drag_name: "Anita Cocktail", city_id: @city.id, house_id: nil )
        @talent = Talent.find_or_create_by(name: "Death Dropping", description: "Yas")
        @usertal = UserTalent.find_or_create_by(user_id: @user.id, talent_id: @talent.id)
      end

      it "UserTalent is set up properly" do 
        expect(@user.talents).to include(@talent)
      end

      it "User City is set up properly" do 
        expect(@user.city).to eq(@city)
      end

    end
end
