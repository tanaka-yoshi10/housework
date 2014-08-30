require 'spec_helper'

describe "recepis/new" do
  before(:each) do
    assign(:recepi, stub_model(Recepi,
      :memo => "MyString"
    ).as_new_record)
  end

  it "renders new recepi form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", recepis_path, "post" do
      assert_select "input#recepi_memo[name=?]", "recepi[memo]"
    end
  end
end
