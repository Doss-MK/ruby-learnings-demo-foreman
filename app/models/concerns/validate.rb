module Validate
    extend ActiveSupport::Concern
    
    included do 
        validates :name, presence: true
        validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
        validates :name, length: { minimum: 6, maximum: 20 }
    end
end