require 'secret_santa'

describe SecretSanta do

  let(:secret_santa) { described_class.new }

  it 'adds a user to a list' do
    secret_santa.add_participant('elf')
    expect(secret_santa.list).to include('elf')
  end
end
