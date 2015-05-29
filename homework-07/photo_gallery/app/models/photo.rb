class Photo < ActiveRecord::Base

	belongs_to :gallery
	has_attached_file :picture
	validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	
end
