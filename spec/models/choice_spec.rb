require 'spec_helper'

describe Choice do
  it { should validate_presence_of :text }
  it { should have_many :translations }
  it { should respond_to :position }


  it "has an attached image" do 
    choice = Choice.new
    choice.image_url.should == 'missing.gif'
  end
end
