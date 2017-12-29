require 'secret_santa'

describe SecretSanta do

  let(:secret_santa) { described_class.new }

  describe '#add_participant' do
    it 'adds a user to a list' do
      secret_santa.add_participant('ed')
      expect(secret_santa.list).to include('ed')
    end
  end

  describe '#choose_pairs' do
    it 'picks pairs of participants from the list' do
      secret_santa.add_participant('jim')
      secret_santa.add_participant('ed')
      secret_santa.choose_pairs
      expect(secret_santa.santa_pairs).to include(['jim', 'ed'])
    end
  end

  describe '#send_message' do
    it 'sends a message to each pair' do
      secret_santa.add_participant('jim')
      secret_santa.add_participant('ed')
      secret_santa.choose_pairs
      expect { secret_santa.send_message }.to output("Subject: Secret Santa\nFrom: Santa, Lapland\nHello jim, you are Secret Santa. Your recipient is ed. Please be generous.\n").to_stdout
    end
  end

  describe '#headers' do
    it 'prints headers' do
      expect { secret_santa.headers}.to output("Subject: Secret Santa\nFrom: Santa, Lapland\n").to_stdout
    end
  end


end
