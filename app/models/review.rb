class Review < ApplicationRecord
  belongs_to :user
  belongs_to :food_circle
  belongs_to :food_item
end
