class Ownership < ApplicationRecord
	attr_accessible :length, :type
	belongs_to :user
	belongs_to :page
end
