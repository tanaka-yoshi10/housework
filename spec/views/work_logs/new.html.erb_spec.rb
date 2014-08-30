require 'spec_helper'

describe "work_logs/new" do
  before(:each) do
    assign(:work_log, stub_model(WorkLog,
      :user => nil,
      :time_result => "",
      :memo => "MyString"
    ).as_new_record)
  end

  it "renders new work_log form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", work_logs_path, "post" do
      assert_select "input#work_log_user[name=?]", "work_log[user]"
      assert_select "input#work_log_time_result[name=?]", "work_log[time_result]"
      assert_select "input#work_log_memo[name=?]", "work_log[memo]"
    end
  end
end
