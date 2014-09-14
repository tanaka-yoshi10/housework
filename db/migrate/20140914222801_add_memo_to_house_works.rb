class AddMemoToHouseWorks < ActiveRecord::Migration
  def change
    add_column :house_works, :memo, :text
  end
end
