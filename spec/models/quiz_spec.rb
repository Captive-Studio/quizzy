require 'spec_helper'

describe Quizzy::Quiz do
  it { should validate_presence_of :name}
  it { should have_many :questions }
  it { should have_many :gifts }

  it 'is_finished? returns true if quiz is not valid longer' do
    quiz = Quizzy::Quiz.new :ends_at => 5.minutes.ago
    expect(quiz.is_finished?).to be true
  end

  it 'is_finished returns false if quiz should be active' do
    quiz = Quizzy::Quiz.new :ends_at => 5.minutes.from_now
    expect(quiz.is_finished?).to be false
  end
end
