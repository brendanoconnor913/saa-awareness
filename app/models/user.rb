class User < ActiveRecord::Base
    validates :password, presence: true
    validates :name, presence: true
    has_secure_password
end
