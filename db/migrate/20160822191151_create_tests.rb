class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.date :date_1
      t.date :date_2
      t.string :name
      t.string :user
      t.decimal :hours

      t.timestamps
    end
  end
end
