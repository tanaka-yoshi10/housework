require 'spec_helper'

describe "recepis/show" do
  before(:each) do
    @recepi = assign(:recepi, stub_model(Recepi,
      :memo => "Memo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Memo/)
  end
end
