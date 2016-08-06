class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :customer
      t.string :project
      t.decimal :hours
      t.text :description
      t.string :date

      t.timestamps
    end
  end
end
