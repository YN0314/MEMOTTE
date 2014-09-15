class User < ActiveRecord::Base
	include Passwd::ActiveRecord
	define_column id: :email, salt: :salt, password: :password

	before_save {self.email = email.downcase}
	validates :name, presence: true
	validates :email, presence: true

  has_many :articles

end
