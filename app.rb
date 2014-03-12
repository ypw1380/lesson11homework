# GEMS (libraries) FOR APPLICATION
require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup'
require 'rack-flash'

# settings
#
# * database connection
configure(:development) {
	set :database, "sqlite3:///test_app.sqlite3"
}

set :sessions, true
set :environment, :development
use Rack::Flash, :sweep => true


require "./models"


# Methods
#
def current_user
	if session[:user_id]
	@current_user = User.find( session[:user_id])
	end
end



get "/" do 
		
	erb :index
end

post "/sign-in" do
	@user = User.where(email: params[:username] ).first

	if @user && ( @user.password == params[:password] )
			puts "Signed in!"
			#store the user id in the session
			session[:user_id] = @user.id

			#notify the user that they are signed in
			flash[:notice] = "You are signed in!"

			redirect to "/posts"
	else

			flash[:error] = "Please try again to sign in!"
			redirect to "/"
	end
end

get "/new" do 
	
	erb :post
end


post "/create_post" do 
  puts params
  if params[:post][:title] && params[:post][:body]

    @post = Post.create(params[:post])

    if @post
      redirect to("/posts")
    else
      redirect to("/new")
    end  

   else
      redirect to("/new") 
   end 
end   

get "/posts" do
	
	erb :home
end
