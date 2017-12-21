class SecretSanta

  attr_reader :list

  def initialize
    @list = []
  end

  def add_participant(elf)
    @list.push(elf)
  end

  def choose_recipient
    @list.sample
  end

end