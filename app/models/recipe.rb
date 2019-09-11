class Recipe < ApplicationRecord
  has_many :recipe_repos, dependent: :destroy
  has_many :user_repos, through: :recipe_repos
end
