class Competition
  attr_accessor :questions

  def start
    close
  end

  class Closed < StandardError

  end
end