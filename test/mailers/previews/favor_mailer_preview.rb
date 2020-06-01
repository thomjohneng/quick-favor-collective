# Preview all emails at http://localhost:3000/rails/mailers/favor_mailer
class FavorMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/favor_mailer/send_favor
  def send_favor
    @user_emails = []
    User.all.each do |user|
      if user.verified == true
        @user_emails << user.email
      end
    end
    favor = Favor.last

    FavorMailer.with(favor: favor).send_favor
  end
end
