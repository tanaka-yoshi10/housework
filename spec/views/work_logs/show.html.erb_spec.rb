require 'spec_helper'

describe "work_logs/show" do
  before(:each) do
    @work_log = assign(:work_log, stub_model(WorkLog,
      :user => nil,
      :time_result => "",
      :memo => "Memo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Memo/)
  end
end
