# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome
  def welcome
    user = User.first
    UserMailer.with(user: user).welcome
  end

  def new_applicant
    @admin_emails = []
    User.all.each do |user|
      if user.admin == true
        @admin_emails << user.email
      end
    end
    user = User.first

    UserMailer.with(user: user).new_applicant
  end
end
