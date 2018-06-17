class User < ActiveRecord::Base
	validates :name, :lastname, {presence: true, length: {minimum: 2, maximum: 20}}
	validates :password, :password_confirmation, {presence: true, length: {minimum: 6, maximum: 20}}
	has_secure_password
end
