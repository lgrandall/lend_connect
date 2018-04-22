class UserScenario < ApplicationRecord
  belongs_to :user
  has_many :add_investments

  validates_presence_of :start_date, :number_days, :initial_lended_amount

  scope :posts_by, ->(user) { where(user_id: user.id)} 
end
