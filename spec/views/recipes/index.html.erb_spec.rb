require 'rails_helper'

RSpec.describe "recipes/index", :type => :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        :memo => "Memo"
      ),
      Recipe.create!(
        :memo => "Memo"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", :text => "Memo".to_s, :count => 2
  end
end
