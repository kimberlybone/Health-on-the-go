class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :url
      t.string :description
      t.integer :date
      t.integer :time

      t.timestamps
    end
  end
end
