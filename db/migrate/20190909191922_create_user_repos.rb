class CreateUserRepos < ActiveRecord::Migration[6.0]
  def change
    create_table :user_repos do |t|
      t.string :interests
      t.belongs_to :user
      t.timestamps
    end
  end
end
