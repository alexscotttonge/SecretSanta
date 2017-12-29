require 'message'

describe Message do

  let(:message) { described_class.new }

  describe '#headers' do
    it 'prints headers' do
      expect { message.headers}.to output("Subject: Secret Santa\nFrom: Santa, Lapland\n").to_stdout
    end
  end

end
