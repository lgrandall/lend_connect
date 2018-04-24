class UserScenario < ApplicationRecord
  belongs_to :user
  has_one :add_investment
  accepts_nested_attributes_for :add_investment


  validates_presence_of :start_date, :number_days, :initial_lended_amount

  scope :posts_by, ->(user) { where(user_id: user.id)} 
end
