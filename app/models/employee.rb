class Employee < ApplicationRecord
    has_and_belongs_to_many :tasks
    has_many :employee_tickets
    has_many :tickets, through: :employee_tickets
    has_many :pictures, as: :imageable
end
