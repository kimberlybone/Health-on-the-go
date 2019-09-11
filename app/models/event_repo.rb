class EventRepo < ApplicationRecord
  belongs_to :user_repo
  belongs_to :event
end
