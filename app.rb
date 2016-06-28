# app.rb

require 'sinatra'
require 'sinatra/activerecord'
require './environments'

class Account < ActiveRecord::Base
  self.table_name = 'salesforce.account'
end

get "/accounts" do
  @accounts = Account.find(params[?email])
  erb :index
end


class Account < ActiveRecord::Base
  self.table_name = 'salesforce.account'
end

#get "/contacts" do
#  @contacts = Contact.all
#  erb :index
#end

get "/create" do
  dashboard_url = 'https://dashboard.heroku.com/'
  match = /(.*?)\.herokuapp\.com/.match(request.host)
  dashboard_url << "apps/#{match[1]}/resources" if match && match[1]
  redirect to(dashboard_url)
end
