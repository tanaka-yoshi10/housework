require 'rails_helper'

RSpec.describe "HouseWorks", :type => :request do
  describe "GET /house_works" do
    it "works! (now write some real specs)" do
      get house_works_path
      expect(response.status).to be(200)
    end
  end
end
