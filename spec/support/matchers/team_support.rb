Spec::Matchers.define :allow_teams_to_enter do
  match do |actual|
    begin
      Team.new("Random name").enter_competition actual
      true
    rescue Competition::Closed
      false
    end
  end

  failure_message_for_should do |actual|
    "expected that #{actual} would indeed allow team to enter"
  end

  failure_message_for_should_not do |actual|
    "expected that #{actual} would not allow team to enter"
  end
end
