class StaticPagesController < ApplicationController
  def home
    render :home_signed_in if user_signed_in?
  end

  def about
  end
end
