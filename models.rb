# Objects of this class are stored in
#  'users' table in the DB
class User < ActiveRecord::Base

   has_many :posts
   has_one :profile

   has_many :user_rooms
   has_many :rooms, through: :user_rooms

end

class Post < ActiveRecord::Base

  belongs_to :user 

end