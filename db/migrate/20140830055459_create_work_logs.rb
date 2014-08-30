class CreateWorkLogs < ActiveRecord::Migration
  def change
    create_table :work_logs do |t|
      t.references :user, index: true
      t.integer :time_result
      t.string :memo

      t.timestamps
    end
  end
end
