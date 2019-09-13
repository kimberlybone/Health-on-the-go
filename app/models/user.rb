class User < ApplicationRecord
  has_many :user_repos
  has_many :event_repos, through: :user_repos
  # delegate :events, through: :user_repos



  validates :username, presence: true, uniqueness: true

  has_secure_password
end
