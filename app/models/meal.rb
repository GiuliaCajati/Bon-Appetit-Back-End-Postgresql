class Meal < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :origin, optional: true
end

