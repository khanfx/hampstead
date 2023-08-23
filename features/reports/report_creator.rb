require_relative '../../data/reportdb'

# Service wrapping report creation
class ReportCreator
  def initialize(reportdb)
    @reportdb = reportdb
  end

  def post(body)
    # TODO: validate & set up the call
    puts "body #{body}"
    @reportdb.save_report 'fake new title'
    'Report Created'
  end
end
