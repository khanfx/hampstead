How to run:

rackup

Testing:

rspec

Plan:

- Ruby http api server using raw Ruby Rack or Sinatra
- w unit tests and dependency injection
- CQRS & Event Sourcing:
  - POST method requests report to be generated, via table in SQLite - ReportRequest
  - Sidekiq background job (so we can practice queue based architecture, prepare for Shoryuken and Amazon SQS)
  - Background job reads from ReportRequest and creates ReportResult, access w a GET
    - Also generate event via websocket or SSE (look at Faye)

