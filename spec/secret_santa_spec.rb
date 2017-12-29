require 'secret_santa'

describe SecretSanta do

  let(:secret_santa) { described_class.new }

  it 'adds a user to a list' do
    secret_santa.add_participant('ed')
    expect(secret_santa.list).to include('ed')
  end

  it 'picks pairs of participants from the list' do
    secret_santa.add_participant('jim')
    secret_santa.add_participant('ed')
    secret_santa.choose_pairs
    expect(secret_santa.santa_pairs).to include(['jim', 'ed'])
  end

  it 'sends a message to each pair' do
    secret_santa.add_participant('jim')
    secret_santa.add_participant('ed')
    secret_santa.choose_pairs
    expect{ secret_santa.send_message }.to output("Secret Santa: jim => Recipient: ed\n").to_stdout
  end

end
