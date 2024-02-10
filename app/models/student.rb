class Student < ApplicationRecord
    has_many :student_project
    has_many :projects, through: :student_project

    has_and_belongs_to_many :course
end
