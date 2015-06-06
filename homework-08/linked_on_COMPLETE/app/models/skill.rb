class Skill < ActiveRecord::Base
	has_many :UsersSkills
	has_many :users, through: :UsersSkills
end
