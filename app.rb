require 'sinatra/base'
require_relative 'features/reports/report_creator'
require_relative 'data/reportdb'

# Theoretically could add testing this way
# https://sinatrarb.com/testing.html
# but rn goal is to push testable layer into plain ruby classes

# Scaling up to using classes
# https://blog.appsignal.com/2023/05/31/how-to-use-sinatra-to-build-a-ruby-application.html
class ReportApp < Sinatra::Base
  get '/' do
    'Welcome to the report server.'
  end

  post '/reports' do
    db = ReportDb.new
    service = ReportCreator.new db
    service.post request.body
  end

  get '/reports/:id' do
    'Not implemented'
  end
end
