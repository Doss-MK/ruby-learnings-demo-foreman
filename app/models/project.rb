class Project < ApplicationRecord
    has_many :student_project
    has_many :students, through: :student_project
end
