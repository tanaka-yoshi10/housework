require 'rails_helper'

RSpec.describe "house_works/new", :type => :view do
  before(:each) do
    assign(:house_work, HouseWork.new(
      :recipe => nil,
      :name => "MyString"
    ))
  end

  it "renders new house_work form" do
    render

    assert_select "form[action=?][method=?]", house_works_path, "post" do

      assert_select "input#house_work_recipe_id[name=?]", "house_work[recipe_id]"

      assert_select "input#house_work_name[name=?]", "house_work[name]"
    end
  end
end
