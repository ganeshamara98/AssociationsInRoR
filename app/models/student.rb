class Student < ApplicationRecord
    has_one :address, as: :addressable
end
