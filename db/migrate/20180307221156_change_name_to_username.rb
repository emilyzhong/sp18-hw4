class ChangeNameToUsername < ActiveRecord::Migration[5.1]
  def change
  	change_column :users, :name, :username
  end
end
