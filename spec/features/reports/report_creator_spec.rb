require 'features/reports/report_creator'

describe ReportCreator do
  context 'post' do

    let(:reportdb) { double('reportdb') }
    let(:rc) { ReportCreator.new reportdb }

    it 'calls reportdb' do
      expect(reportdb).to receive(:save_report) .with('fake new title')
      rc.post 'content'
    end

    it 'returns Report Created' do
      allow(reportdb).to receive(:save_report)
      result = rc.post 'content'
      expect(result).to eq('Report Created')
    end

  end
end
