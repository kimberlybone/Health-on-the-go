class RecipeRepo < ApplicationRecord
  belongs_to :recipe
  belongs_to :user_repo
end
