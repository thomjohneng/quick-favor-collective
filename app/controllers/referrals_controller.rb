class ReferralsController < ApplicationController
  def new
    @referral = Referral.new
  end

  def create
    @referral = Referral.new(referral_params)
    @referral.user = current_user

    if @referral.save
      ReferralMailer.with(referral: @referral).invite.deliver_now
      ReferralMailer.with(referral: @referral).new_referral.deliver_now
      redirect_to favors_path, notice: "Invite sent!"
    else
      render 'new'
    end
  end

  def index
    @referrals = Referral.all
  end

  def show
  end

  private

  def referral_params
    params.require(:referral).permit(:first_name, :last_name, :email)
  end
end
