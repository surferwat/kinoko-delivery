class Box < ApplicationRecord
    belongs_to :user
    belongs_to :company
    belongs_to :product

    enum :delivery_location, [ :shinjuku ]
    enum :status, [ :open, :requires_action, :closed ]

    validates :company_id, presence: true
    validates :product_id, presence: true
    validates :units_number, presence: true
    validates :delivery_location, presence: true
    validates :bulk_delivery_fee, presence: true
    validates :single_delivery_fee, presence: true
    validates :ends_at, presence: true
end
