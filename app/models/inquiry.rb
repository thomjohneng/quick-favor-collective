class Inquiry < ApplicationRecord
  belongs_to :user, optional: true

  validates :subject, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
