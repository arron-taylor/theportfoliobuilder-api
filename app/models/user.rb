class User < ApplicationRecord
	has_secure_password
	has_many :pages
	has_many :components, :through => :pages
end
