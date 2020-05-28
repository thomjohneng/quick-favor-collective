class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :story, presence: true
  validates :city, presence: true
  validates :industry, presence: true
  validates :linkedin, presence: true
  validates :referrer, presence: true

  has_many :favors
  has_many :referrals
end
