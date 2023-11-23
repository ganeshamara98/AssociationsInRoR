class Mentor < ApplicationRecord
    has_one :address, as: :addressable
end
