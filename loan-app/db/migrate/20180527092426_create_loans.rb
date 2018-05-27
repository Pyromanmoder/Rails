class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
    	t.string :giver
    	t.float :sum
    	t.integer :term
    	t.float :interest

      t.timestamps null: false
    end
  end
end
