class Reviewer < ApplicationRecord
  belongs_to :review
  has_many :orders
end
