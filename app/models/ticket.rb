class Ticket < ApplicationRecord
    has_many :employee_tickets
    has_many :employees, through: :employee_tickets
end
