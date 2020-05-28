class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :join]

  def home
  end

  def about
  end

  def join
  end
end
