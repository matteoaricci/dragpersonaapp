require 'rails_helper'

RSpec.describe "Users", type: :request do

    describe "render pages" do
        before do 
            @city = City.find_or_create_by(name: "Annapolis")
            @user = User.find_or_create_by(name: "Matt", drag_name: "Anita Cocktail", city_id: @city.id, house_id: nil )
            @talent = Talent.find_or_create_by(name: "Death Dropping", description: "Yas")
            @usertal = UserTalent.find_or_create_by(user_id: @user.id, talent_id: @talent.id)
          end

        subject(:a) { get "/users/new" }
        subject(:b) { get "/users"}
        subject(:c) { get "/users/#{@user.id}"}

        it "renders the new page" do
            expect(a).to render_template(:new)
        end

        it "renders the detail page" do
            expect(b).to render_template(:index)
        end

        it "renders the show page" do 
            expect(c).to render_template(:show)
        end
    end

    
end
