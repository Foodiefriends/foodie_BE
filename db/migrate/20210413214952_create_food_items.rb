class CreateFoodItems < ActiveRecord::Migration[5.2]
  def change
    create_table :food_items do |t|
      t.references :restaurant, foreign_key: true
      t.string :name
      t.integer :type

      t.timestamps
    end
  end
end
