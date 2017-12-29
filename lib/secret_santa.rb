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
      loop do
        index = (rand * list.length).to_i
        recipient = list[index]
        unless recipient == secret_santa
          list.delete_at(index)
          santa_pairs << [secret_santa, recipient]
          break
        end
      end
    end
  end

end
