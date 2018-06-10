class AddPasswordDigestToUser < ActiveRecord::Migration
  def change
      add_column :users, :password_diegest, :string
  end
end
