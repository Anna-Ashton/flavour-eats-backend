class Cart < ApplicationRecord
    belongs_to :user, dependant: :destroy
    belongs_to :food
end
