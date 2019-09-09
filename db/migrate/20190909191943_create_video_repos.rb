class CreateVideoRepos < ActiveRecord::Migration[6.0]
  def change
    create_table :video_repos do |t|
      t.belongs_to :user_repo
      t.belongs_to :video
      t.timestamps
    end
  end
end
