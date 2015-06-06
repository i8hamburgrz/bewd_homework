class User < ActiveRecord::Base
  
  belongs_to :company
  has_many :UsersSkills
  has_many :skills, through: :UsersSkills

  has_secure_password # AR method to activate bcrypt

  # column called password_digest, which is a string
  # $ rails g migration add_password_digest_to_users

end
