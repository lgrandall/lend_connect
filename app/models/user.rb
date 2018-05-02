class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_scenarios, dependent: :destroy
  has_many :add_investments, dependent: :destroy
  has_many :add_investment_months, dependent: :destroy
  validates_presence_of :first_name
  validates_presence_of :last_name
end
