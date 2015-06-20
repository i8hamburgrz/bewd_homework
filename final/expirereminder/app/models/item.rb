class Item < ActiveRecord::Base

	validates :name, :expiration_date, presence: true
	belongs_to :user
end
