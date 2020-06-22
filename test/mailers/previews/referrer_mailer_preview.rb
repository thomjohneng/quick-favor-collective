# Preview all emails at http://localhost:3000/rails/mailers/referrer_mailer
class ReferrerMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/referrer_mailer/invite
  def invite
    ReferrerMailer.invite
  end

end
