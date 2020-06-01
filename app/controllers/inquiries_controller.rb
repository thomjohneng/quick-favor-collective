class InquiriesController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if user_signed_in?
      @inquiry.user = current_user
    end

    if @inquiry.save
      InquiryMailer.with(inquiry: self).new_inquiry.deliver_now
      redirect_to root_path, notice: "Thanks for your inquiry!"
    else
      redirect_to contact_path, notice: "Oops, think you missed a question!"
    end
  end

  def index
    @inquiries = Inquiry.all.sort_by(&:created_at).reverse
  end

  def update
    @inquiry = Inquiry.find(params[:id])
    @inquiry.responded = true

    if @inquiry.save
      redirect_to inquiries_path, notice: "Done!"
    else
      redirect_to inquiries_path, notice: "Oops, something went wrong."
    end
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:subject, :message, :first_name, :last_name, :email)
  end
end
