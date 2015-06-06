class SkillsController < ApplicationController
	def new
		@skills = Skill.new
	end

	def create
		@skills = Skill.new(skill_params)

		if @skills.save
			redirect_to '/'
		else
			render :new
		end
	end

private
	def skill_params
		params.require(:skill).permit(:name)
	end
end