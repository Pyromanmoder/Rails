class User < ActiveRecord::Base
	validates :name, :lastname, {presence: true, length: {minimum: 2, maximum: 20}}
	has_secure_password
end
