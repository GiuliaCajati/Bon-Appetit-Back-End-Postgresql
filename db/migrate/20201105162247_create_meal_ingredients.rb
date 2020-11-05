class CreateMealIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_ingredients do |t|
      t.integer :meal_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
