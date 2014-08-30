require 'rails_helper'

RSpec.describe "house_works/index", :type => :view do
  before(:each) do
    assign(:house_works, [
      HouseWork.create!(
        :recipe => nil,
        :name => "Name"
      ),
      HouseWork.create!(
        :recipe => nil,
        :name => "Name"
      )
    ])
  end

  it "renders a list of house_works" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
