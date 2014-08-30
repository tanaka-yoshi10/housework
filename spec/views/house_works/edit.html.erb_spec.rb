require 'rails_helper'

RSpec.describe "house_works/edit", :type => :view do
  before(:each) do
    @house_work = assign(:house_work, HouseWork.create!(
      :recipe => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit house_work form" do
    render

    assert_select "form[action=?][method=?]", house_work_path(@house_work), "post" do

      assert_select "input#house_work_recipe_id[name=?]", "house_work[recipe_id]"

      assert_select "input#house_work_name[name=?]", "house_work[name]"
    end
  end
end
