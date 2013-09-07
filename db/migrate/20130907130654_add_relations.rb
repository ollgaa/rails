class AddRelations < ActiveRecord::Migration
  def up
  	change_table :ideas do |t|
  		t.integer :user_id
  	end

		change_table :comments do |t|
  		t.integer :user_id
  	end

  	add_foreign_key :comments, :users
  	add_foreign_key :ideas, :users
  end
end
