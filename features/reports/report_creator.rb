require_relative '../../data/reportdb'

# Service wrapping report creation
class ReportCreator
  def initialize(reportdb)
    @reportdb = reportdb
  end

  def post
    # TODO: validate & set up the call
    @reportdb.save_report 'fake new title'
    'Report Created'
  end
end
