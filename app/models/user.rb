class User < ApplicationRecord

	has_many :pages
	has_secure_password

end
