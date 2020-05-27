class Favor < ApplicationRecord
  belongs_to :user

  validates :favor, presence: true
  validates :details, presence: true
  validates :significance, presence: true
end
