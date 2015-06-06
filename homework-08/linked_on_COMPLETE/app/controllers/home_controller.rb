class HomeController < ApplicationController

  def home
    @companies = Company.all
    @users = User.all
    @skills = Skill.all
  end

end