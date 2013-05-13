require 'spec_helper'

describe Choice do
  it { should validate_presence_of :text }
  it { should have_many :translations }

  it "has an attached image" do 
    choice = Choice.new
    choice.image_url.should == 'missing.gif'
  end
end
