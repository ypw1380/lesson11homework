class CreateUsersTable < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :email
  		t.string :password
  		t.string :fname
  		t.string :lname
  		t.datetime :birthday
  		t.integer :age
  		t.string :gender
  	end
  end
end
