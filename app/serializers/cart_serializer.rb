class CartSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :food
end
