class Manager < ApplicationRecord
    has_one :manager_history
    has_one :department
    has_many :pictures, as: :imageable

    include Validate
end
