require 'rails_helper'

describe Quizzy::Choice, type: :model do
  it { should have_many :translations }
  it { should respond_to :position }
  it { should validate_presence_of :uid }
  it { should validate_uniqueness_of :uid }


  it "has an attached image" do 
    choice = Quizzy::Choice.new
    expect(choice.image_url).to eq 'missing.gif'
  end
end
