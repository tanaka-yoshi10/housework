require 'spec_helper'

describe "recepis/edit" do
  before(:each) do
    @recepi = assign(:recepi, stub_model(Recepi,
      :memo => "MyString"
    ))
  end

  it "renders the edit recepi form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recepi_path(@recepi), "post" do
      assert_select "input#recepi_memo[name=?]", "recepi[memo]"
    end
  end
end
