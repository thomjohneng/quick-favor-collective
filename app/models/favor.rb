class Favor < ApplicationRecord
  belongs_to :user

  validates :favor, presence: true
  validates :details, presence: true
  validates :significance, presence: true
  validates :introduction, presence: true
  validates :user, presence: true

  def end_date
    created_at + 7.days
  end
end
