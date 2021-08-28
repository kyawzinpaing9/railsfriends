class HomeController < ApplicationController

  def index
  end

  def about
    if user_signed_in?
      @about_me = "Your name is : "+ current_user.email
      @register_date = "You registered in "+ current_user.created_at.to_date.to_s
    end
  end
  
end
