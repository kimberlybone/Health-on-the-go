class ReminderRepo < ApplicationRecord
  belongs_to :reminder
  belongs_to :user_repo
end
