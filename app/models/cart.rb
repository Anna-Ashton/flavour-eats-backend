class Cart < ApplicationRecord
    belongs_to :user, dependant: :destroy
end
