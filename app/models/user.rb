class User < ApplicationRecord
    has_many :carts
    has_many :user_foods
    has_many :foods, through: :user_foods

    has_secure_password
    validates :username, presence: true, uniqueness: true
end
