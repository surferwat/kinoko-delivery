class Company < ApplicationRecord
    belongs_to :user
    has_many :products
    
    validates :name, presence: true
    validates :url, uniqueness: true, allow_blank: true
end
