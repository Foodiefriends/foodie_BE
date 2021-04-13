class CreateFoodCircles < ActiveRecord::Migration[5.2]
  def change
    create_table :food_circles do |t|
      t.string :food_type

      t.timestamps
    end
  end
end
