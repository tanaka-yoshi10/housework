class AddHouseWorkToWorkLogs < ActiveRecord::Migration
  def change
    add_reference :work_logs, :house_work, index: true
  end
end
