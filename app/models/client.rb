class Client < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :first_name, format: { with: /\A[a-zA-Z]+\z/ }
    validates :last_name, format: { with: /\A[a-zA-Z]+\z/ }
    validates :first_name, length: { minimum:3, maximum:20 }
    validates :last_name, length: { minimum:3, maximum:20 }
    validates :age, numericality: { only_integer: true, greater_than_or_equal_to: 18, less_than_or_equal_to: 30 }
    validates :email, presence: true, on: :update
    validates :email, uniqueness: { case_sensitive: false }, on: :update
    validates :joined_date, comparison: { greater_than: Time.now - 100 }
    validates :country, inclusion: { in: %w(usa india canada australia) }
    validates :country, exclusion: { in: %w(russia ukraine), message: "%{value} seems wrong" }

    scope :active_clients, -> { where(active: true) }
    scope :in_active_clients, -> { where(active: false) }
    scope :clients_by_country, -> (country_name) { where(country: country_name.downcase.to_s) }
    scope :categories_age, -> (min,max) { where("age > :min OR age < :max", { min: min, max: max }) }

    enum :status, [:joined, :releaved]

    before_save do 
        puts "before-save has been called"
    end
    
    before_create do 
        puts "before-create has been called"
    end

    before_update do 
        puts "before-update has been called"
    end

    before_destroy do 
        puts "before-destroy has been called"
    end

    after_save do 
        puts "after-save has been called"
    end

    after_create do 
        puts "after-create has been called"
    end

    after_update do 
        puts "after-update has been called"
    end

    after_destroy do 
        puts "after-destroy has been called"
    end

    after_commit do 
        puts "after-commit has been called"
    end
    
end
