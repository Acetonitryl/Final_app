class Advertisement < ActiveRecord::Base
	validates :first_name, :last_name, :email, :phone_number, :town, :price, :bio, presence: true
	belongs_to :user

	acts_as_taggable
	letsrate_rateable "popularity"
end
