class UserRepo < ApplicationRecord
  has_many :video_repos
  has_many :videos, through: :video_repos

  belongs_to :user
end
