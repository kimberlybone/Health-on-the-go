class Event < ApplicationRecord
  has_many :event_repos
  has_many :user_repos, through: :event_repos
end
