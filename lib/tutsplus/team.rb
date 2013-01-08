class Team

  attr_accessor :name, :players

  def initialize(name, players = [])
    raise Exception unless players.is_a? Array
    
    @name = name
    @players = players

    raise Exception if @name && has_bad_name?
  end

  def has_bad_name?
    list_of_words = %w{crappy bad lousy}
    list_of_words - @name.downcase.split(" ") != list_of_words
  end

  def favored?
    @players.include? "Leo Messi"
  end

  def enter_competition(competition)
    raise Competition::Closed if competition.questions.empty?
  end
end