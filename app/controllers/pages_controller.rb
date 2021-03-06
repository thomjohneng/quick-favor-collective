class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :join, :contact]

  def home
    @home = true
  end

  def about
    if user_signed_in?
      if current_user.status == "verified"
        @unhide_favornavbar = true
      end
    else
      @unhide_joinnavbar = true
    end
  end

  def join
  end

  def contact
    @inquiry = Inquiry.new
  end
end
