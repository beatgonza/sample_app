require_relative '../../lib/tutsplus/competition.rb'
require_relative '../../lib/tutsplus/team.rb'
require_relative '../support/matchers/team_support.rb'

describe Competition do
  
  let(:competition) { Competition.new }
  let(:team) { Team.new("Random name") }

  context "having no questions" do
    # before { competition.questions = [] }
    before { competition.stub(:questions => []) }
    
    it "doesn't accept any teams" do
      # expect do
      #   team.enter_competition(competition)
      # end.to raise_error Competition::Closed
      competition.should_not allow_teams_to_enter
    end

  end

  context "having questions" do
    # before { competition.questions = [{ :title => "Question" }]}
    before { competition.stub(:questions => [ stub ]) }
    subject { competition }

    it { should allow_teams_to_enter }
  end

  context "when started" do
    it "is closed" do
      competition.should_receive(:close)
      competition.start
    end
  end

end