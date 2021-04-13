class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.references :food_circle, foreign_key: true
      t.references :food_item, foreign_key: true
      t.integer :rating
      t.string :image
      t.text :comment

      t.timestamps
    end
  end
end
