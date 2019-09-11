class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :name
      t.integer :age
      t.string :gender
      t.string :food_intake
      t.string :medications
      t.integer :hours_of_sleep
      t.integer :exercise
      t.string :shower
      t.string :medical_history
      t.integer :weight
      t.integer :height
      t.integer :weight_goal
      t.integer :exercise_goal

      t.timestamps
    end
  end
end
