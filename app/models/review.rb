class Review < ApplicationRecord
  belongs_to :book
  has_many :reviewers
end
