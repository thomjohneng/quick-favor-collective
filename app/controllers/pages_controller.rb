class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :join, :contact]

  def home
  end

  def about
  end

  def join
  end

  def contact
    @inquiry = Inquiry.new
  end
end
