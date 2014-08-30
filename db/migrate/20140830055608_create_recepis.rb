class CreateRecepis < ActiveRecord::Migration
  def change
    create_table :recepis do |t|
      t.string :memo

      t.timestamps
    end
  end
end
