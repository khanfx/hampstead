require 'features/reports/report_creator'

describe ReportCreator do
  context 'post' do

    let(:reportdb) { double('reportdb') }
    let(:rc) { ReportCreator.new reportdb }

    it 'calls reportdb' do
      expect(reportdb).to receive(:save_report).with('fake new title')
      rc.post 'content'
    end

    it 'returns Report Created' do
      result = rc.post 'content'
      expect(result).to eq(5)
    end

  end
end
