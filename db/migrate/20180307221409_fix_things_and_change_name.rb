class FixThingsAndChangeName < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :name, :string
  	
  	change_table :users do |t|
  		t.rename :name, :user_name
  	end
  end
end
