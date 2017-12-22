class SecretSanta

  attr_reader :list, :santa_pairs

  def initialize
    @list = []
    @santa_pairs = []
  end

  def add_participant(name)
    list.push(name)
  end

  def choose_pairs
    list.each do |secret_santa|
      index = (rand * list.length).to_i
      recipient = list[index]
      santa_pairs << [secret_santa, recipient]
    end
  end

end
