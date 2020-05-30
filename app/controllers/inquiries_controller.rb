class InquiriesController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @inquiry = Inquiry.new(inquiry_params)

    if @inquiry.save
      redirect_to root_path
    else
      redirect_to contact_path, notice: "Oops, think you missed a question!"
    end
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:subject, :message, :first_name, :last_name, :email)
  end
end
