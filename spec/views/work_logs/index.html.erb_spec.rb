require 'spec_helper'

describe "work_logs/index" do
  before(:each) do
    assign(:work_logs, [
      stub_model(WorkLog,
        :user => nil,
        :time_result => "",
        :memo => "Memo"
      ),
      stub_model(WorkLog,
        :user => nil,
        :time_result => "",
        :memo => "Memo"
      )
    ])
  end

  it "renders a list of work_logs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Memo".to_s, :count => 2
  end
end
