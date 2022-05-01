class User < ApplicationRecord
    has_many :companies, :dependent => :destroy
    has_many :boxes
    
    # compares virtual attributes password and password_confirmation
    # if same, hashes password and saves value to password_digest
    has_secure_password

    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
    validates :password, allow_blank: true, length: { in: 6..20 }
    validates :username, uniqueness: true, allow_blank: true, length: { minimum: 1, maximum: 10, too_short: "%{count} characters is the minimum allowed", too_long: "%{count} characters is the maximum allowed" }, format: { with: /\A[a-zA-Z0-9_]+\z/, message: "only allows letters, numbers, and underscores" }
end
