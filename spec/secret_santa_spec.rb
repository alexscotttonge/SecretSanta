require 'secret_santa'

describe SecretSanta do

  let(:secret_santa) { described_class.new }

  it 'adds a user to a list' do
    secret_santa.add_participant('elf')
    expect(secret_santa.list).to include('elf')
  end

  it 'picks a random user from the list' do
    secret_santa.add_participant('elf')
    secret_santa.add_participant('elf1')
    expect(secret_santa.choose_recipient).to include('elf')
  end

end
