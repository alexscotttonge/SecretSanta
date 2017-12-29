require 'secret_santa'

describe SecretSanta do

  class MessageDouble

    attr_reader :headers

    def headers
      puts "Subject: Secret Santa"
      puts "From: Santa, Lapland"
    end

  end

  let(:message) { MessageDouble.new }
  let(:secret_santa) { described_class.new(message) }

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

end
