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
    expect(secret_santa.choose_pairs).to eq(['ed', 'jim'])
  end

end
