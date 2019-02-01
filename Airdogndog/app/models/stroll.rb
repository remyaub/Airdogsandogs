class Stroll < ApplicationRecord
    belongs_to :dogsitter
    has_many :dogs
    belongs_to :city
end
