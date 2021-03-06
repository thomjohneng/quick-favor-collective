class Referral < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :user, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end
end
