class Relaxation < ApplicationRecord
  has_many :relaxation_repos
  has_many :user_repos, through: :relaxation_repos
end
