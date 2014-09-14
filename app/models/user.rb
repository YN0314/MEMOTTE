class User < ActiveRecord::Base
	include Passwd::ActiveRecord
	define_column id: :email, salt: :salt, password: :password
  
	before_save {self.email = email.downcase}
	before_create :create_remember_token
	validates :name, presence: true
	validates :email, presence: true

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.encrypt(token)
		Digest::SHA1.hexdingest(token.to_s)
	end

	private

	  def create_remember_token
	  	self.remember_token = User.encrypt(User.new_remember_toke)
	  end
end
