class AddUseridToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :userid, :string
  end
end
