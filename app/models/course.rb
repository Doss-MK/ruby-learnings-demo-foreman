class Course < ApplicationRecord
    has_and_belongs_to_many :student
end
