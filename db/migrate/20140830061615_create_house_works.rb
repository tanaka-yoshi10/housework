class CreateHouseWorks < ActiveRecord::Migration
  def change
    create_table :house_works do |t|
      t.references :recipe, index: true
      t.string :name

      t.timestamps
    end
  end
end
