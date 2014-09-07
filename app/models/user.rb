class User < ActiveRecord::Base
	before_save {self.email = email.downcase}
	validates :name, presence: true
	validates :email, presence: true
	validates :password, presence: true
	validates :password_confirmation, presence: true
end
