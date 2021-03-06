require 'secret_santa'
require 'helper'

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
      add_participants_and_choose_pairs
      expect(secret_santa.santa_pairs).to include(['jim', 'ed'])
    end
  end

  describe '#send_message' do
    it 'sends a message to each pair' do
      add_participants_and_choose_pairs
      expect { secret_santa.send_message }.to output("Subject: Secret Santa\nFrom: Santa, Lapland\nHello jim, you are Secret Santa. Your recipient is ed. Please be generous.\n").to_stdout
    end
  end

  describe '#budget' do
    it 'sets the budget per pair' do
      add_participants_and_choose_pairs
      expect(secret_santa.budget).to eq 10
    end
  end

  describe '#update' do
    it 'sends an update to everyone' do
      add_participants_and_choose_pairs
      expect { secret_santa.update }.to output("Ho,ho,ho. Please be advised, Secret Santa present time starts at 6pm tomorrow\n").to_stdout
    end
  end

end
