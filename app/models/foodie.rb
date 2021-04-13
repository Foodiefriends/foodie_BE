class Foodie < ApplicationRecord
  belongs_to :user
  belongs_to :food_circle
end
