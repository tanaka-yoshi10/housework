require 'spec_helper'

describe "recepis/index" do
  before(:each) do
    assign(:recepis, [
      stub_model(Recepi,
        :memo => "Memo"
      ),
      stub_model(Recepi,
        :memo => "Memo"
      )
    ])
  end

  it "renders a list of recepis" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Memo".to_s, :count => 2
  end
end
