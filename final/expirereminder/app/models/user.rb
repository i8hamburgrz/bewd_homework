class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ActiveRecord::Base

	has_many :items

	has_secure_password

	validates :name, :email, :password, presence: true
	validates :email, uniqueness: true
	validates :password, confirmation: true

	#set up validations  == rails validations
end
