class User < ApplicationRecord
    has_secure_password

    validates :email_address, presence: true, uniqueness: true

    validates :password, presence: true, length: { minimum: 8 }
    
    validates :role, inclusion: {in: %w(manager client room_service cook security)}

end
