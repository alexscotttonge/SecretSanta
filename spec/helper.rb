require 'secret_santa'

module Setup

  def add_participant_and_choose_pairs
    secret_santa.add_participant('jim')
    secret_santa.add_participant('ed')
    secret_santa.choose_pairs
  end

end
