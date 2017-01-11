class UpdateJobsTable < ActiveRecord::Migration[5.0]
  def up
  	change_column_default :jobs, :complete, from: nil, to: false
  end
end
