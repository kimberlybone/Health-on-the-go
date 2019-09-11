class CreateRelaxations < ActiveRecord::Migration[6.0]
  def change
    create_table :relaxations do |t|
      t.string :tips

      t.timestamps
    end
  end
end
