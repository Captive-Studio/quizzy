require 'spec_helper'

describe Quizzy::Choice do
  it { should validate_presence_of :text }
  it { should have_many :translations }
  it { should respond_to :position }


  it "has an attached image" do 
    choice = Quizzy::Choice.new
    choice.image_url.should == 'missing.gif'
  end
end
