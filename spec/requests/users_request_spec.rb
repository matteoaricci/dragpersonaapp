require 'rails_helper'

RSpec.describe "Users", type: :request do

    describe "render pages" do

        subject(:a) { get "/users/new" }
        subject(:b) { get "/users"}

        it "renders the new page" do
            expect(a).to render_template(:new)
        end

        it "renders the detail page" do
            expect(b).to render_template(:index)
        end
    end

    
end
