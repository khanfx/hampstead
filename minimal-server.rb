require 'sinatra'

# Scaling up to using classes
# https://blog.appsignal.com/2023/05/31/how-to-use-sinatra-to-build-a-ruby-application.html

get '/' do
  'Welcome to the report server.'
end

post '/reports' do
  'Report created'
end

get '/reports/:id' do
  'Not implemented'
end
