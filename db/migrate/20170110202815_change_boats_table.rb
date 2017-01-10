class ChangeBoatsTable < ActiveRecord::Migration[5.0]
  def change
  	change_table :boats do |t|
  		t.integer	:user_id
  	end
  end
end
