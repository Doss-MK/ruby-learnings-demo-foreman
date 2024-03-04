class Department < ApplicationRecord
  belongs_to :manager
  has_one :manager_history, through: :manager
end
