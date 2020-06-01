# Preview all emails at http://localhost:3000/rails/mailers/inquiry_mailer
class InquiryMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/inquiry_mailer/new_inquiry
  def new_inquiry
    @admin_emails = []
    User.all.each do |user|
      if user.admin == true
        @admin_emails << user.email
      end
    end
    @inquiry = Inquiry.last

    InquiryMailer.with(inquiry: @inquiry).new_inquiry
  end
end
