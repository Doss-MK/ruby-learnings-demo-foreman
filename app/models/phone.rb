class Phone < ApplicationRecord
  belongs_to :product, touch: true
end
