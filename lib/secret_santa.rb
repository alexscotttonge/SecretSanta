class SecretSanta

  attr_reader :list, :santa_pairs, :message

  def initialize(message)
    @list = []
    @santa_pairs = []
    @message = message
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

  def send_message
    message.headers
    santa_pairs.each do |secret_santa, recipient|
      puts "Hello #{secret_santa}, you are Secret Santa. Your recipient is #{recipient}. Please be generous."
    end
  end

end
