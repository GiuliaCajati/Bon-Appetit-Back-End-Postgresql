class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :photo_url
      t.integer :likes
      t.text :instructions
      t.text :ingredients 
      t.integer :user_id
      t.integer :origin_id
      
      t.timestamps
    end
  end
end
