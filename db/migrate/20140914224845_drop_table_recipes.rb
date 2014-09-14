class DropTableRecipes < ActiveRecord::Migration
  def change
    drop_table :recipes
    remove_index :house_works, :recipe_id
  end
end
