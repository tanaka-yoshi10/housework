require 'rails_helper'

RSpec.describe "house_works/show", :type => :view do
  before(:each) do
    @house_work = assign(:house_work, HouseWork.create!(
      :recipe => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
