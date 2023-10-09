class User < ApplicationRecord
    validates :username, presence: true, 
                        uniqueness: { case_sensitive: false }, 
                        length: { minimum: 3, maximum: 25 }
    VALID_EMAIL_REGEX = /\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b/i

    validates :email, presence: true, 
                        uniqueness: { case_sensitive: false }, 
                        length: { maximum: 100 },
                        format: { with: VALID_EMAIL_REGEX }
end
