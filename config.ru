require 'rack/contrib/json_body_parser'
require File.join(File.dirname(__FILE__), 'app.rb')
use Rack::JSONBodyParser, media: /json/
run ReportApp
