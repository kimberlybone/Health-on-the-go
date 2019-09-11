class AddColumnsToUserRepos < ActiveRecord::Migration[6.0]
  def change
    add_column :user_repos, :exercise_videos, :boolean
    add_column :user_repos, :recipes, :boolean
    add_column :user_repos, :relaxation, :boolean
    add_column :user_repos, :medical_foods, :boolean
    add_column :user_repos, :events, :boolean
  end
end
