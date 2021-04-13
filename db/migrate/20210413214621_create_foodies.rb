class CreateFoodies < ActiveRecord::Migration[5.2]
  def change
    create_table :foodies do |t|
      t.references :user, foreign_key: true
      t.references :food_circle, foreign_key: true

      t.timestamps
    end
  end
end
