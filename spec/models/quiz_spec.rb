require 'spec_helper'

describe Quiz do
  it { should validate_presence_of :name}
  it { should have_many :questions }
  it { should have_many :gifts }

  it 'is_finished? returns true if quiz is not valid longer' do
    quiz = Quiz.new :ends_at => 5.minutes.ago
    quiz.is_finished?.should be_true
  end

  it 'is_finished returns fasle if quiz should be active' do
    quiz = Quiz.new :ends_at => 5.minutes.from_now
    quiz.is_finished?.should be_false
  end
end
