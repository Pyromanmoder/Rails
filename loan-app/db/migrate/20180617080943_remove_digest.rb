class RemoveDigest < ActiveRecord::Migration
  def change
  	remove_column :users, :password_diegest
  end
end
