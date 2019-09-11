class CreateRelaxationRepos < ActiveRecord::Migration[6.0]
  def change
    create_table :relaxation_repos do |t|
      t.belongs_to :user_repo, null: false, foreign_key: true
      t.belongs_to :relaxation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
