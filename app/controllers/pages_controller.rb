class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  # routes.rb => profile route

  # def profile
  #   @user = current_user
  # end

  # views/pages/profile.html.erb
end
