class UserRepo < ApplicationRecord
  has_many :video_repos
  has_many :videos, through: :video_repos
  has_many :recipe_repos
  has_many :recipes, through: :recipe_repos
  has_many :event_repos
  has_many :events, through: :event_repos
  has_many :relaxation_repos
  has_many :relaxations, through: :relaxation_repos

  belongs_to :user
end
