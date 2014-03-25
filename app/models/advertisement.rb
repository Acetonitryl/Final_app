class Advertisement < ActiveRecord::Base
	validates :first_name, :last_name, :email, :phone_number, :town, :curse_type, :price, :bio, presence: true
	belongs_to :user
end
