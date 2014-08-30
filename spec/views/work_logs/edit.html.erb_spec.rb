require 'spec_helper'

describe "work_logs/edit" do
  before(:each) do
    @work_log = assign(:work_log, stub_model(WorkLog,
      :user => nil,
      :time_result => "",
      :memo => "MyString"
    ))
  end

  it "renders the edit work_log form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", work_log_path(@work_log), "post" do
      assert_select "input#work_log_user[name=?]", "work_log[user]"
      assert_select "input#work_log_time_result[name=?]", "work_log[time_result]"
      assert_select "input#work_log_memo[name=?]", "work_log[memo]"
    end
  end
end
