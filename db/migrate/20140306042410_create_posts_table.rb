class CreatePostsTable < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.integer :user_id
  		t.string :title
  		t.text   :body
  		t.timestamps #creates 'created_at' and 'updated_at' columns
  	end	
  end
end
