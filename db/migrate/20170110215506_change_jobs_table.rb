class ChangeJobsTable < ActiveRecord::Migration[5.0]
  def change
  	change_table :jobs do |t|
  		t.boolean	:complete
  	end
  end
end
