 
class Reminder < ApplicationRecord
  has_many :reminder_repos
  has_many :user_repos, through: :reminder_repos



end
