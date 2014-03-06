source "http://rubygems.org"

gem "sinatra" # our web app library
gem 'activerecord' # the ORM that will talk to the DB
gem 'sinatra-activerecord'  # lib that helps sinatra use activerecord
gem 'rake'  # 
gem 'rack-flash3' #allows us to send 'flash' messages on request

#these gems only get installed in development mode
group :development do
	gem "sqlite3"
end

group :production do
	gem 'pg'
end