class Product < ApplicationRecord
    belongs_to :company

    enum :kind, [ :shiitake, :maitake, :matsutake ]
    enum :prefecture_of_origin, [ :tokyo, :niigata, :ooita ]
    
    validates :name, presence: true
    validates :description, presence: true
    validates :kind, presence: true
    validates :prefecture_of_origin, presence: true
    validates :price, presence: true
    validates :items_per_unit, presence: true
    validates :weight_per_unit, presence: true
end
