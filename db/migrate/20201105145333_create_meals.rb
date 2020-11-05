class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :photo_url
      t.integer :likes
      t.string :origin
      t.text :instructions

      t.timestamps
    end
  end
end
