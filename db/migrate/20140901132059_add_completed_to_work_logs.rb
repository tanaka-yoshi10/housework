class AddCompletedToWorkLogs < ActiveRecord::Migration
  def change
    add_column :work_logs, :completed, :date
  end
end
