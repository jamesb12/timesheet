class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
      t.string :name
      t.string :job
      t.date :date

      t.timestamps
    end
  end
end
