class Video < ApplicationRecord
  has_many :video_repos
  has_many :user_repos, through: :video_repos
end
