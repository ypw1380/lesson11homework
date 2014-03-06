class CreateNamesFirstandlast < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :fname
  		t.string :lname
  	end
  end
end
