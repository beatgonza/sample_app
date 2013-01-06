require_relative '../../lib/tutsplus/add.rb'

describe "add function" do
  
  it "adds two numbers" do
    add(1,5).should == 6
  end
  
end