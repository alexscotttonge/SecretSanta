class SecretSanta

  attr_reader :list

  def initialize
    @list = []
  end

  def add_participant(name)
    @list.push(name)
  end

end
