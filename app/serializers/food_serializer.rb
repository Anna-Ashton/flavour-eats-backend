class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :food_url, :price, :review, :description
end
