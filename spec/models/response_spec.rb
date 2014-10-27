require 'spec_helper'

describe Quizzy::Response do
  it { should belong_to :question}
  it { should validate_presence_of :question}
  it { should have_and_belong_to_many :choices }

  describe "good?" do
    it 'is false when all good choices were not selected' do
      choice1 = Quizzy::Choice.new good: true
      choice2 = Quizzy::Choice.new good: true

      question = Quizzy::Question.new choices: [choice1, choice2]
      response = Quizzy::Response.new choices: [choice1], question: question

      expect(response.good?).to be false
    end
  end

  describe "should be unique" do

    before(:each) do
      choice1 = Quizzy::Choice.new good: true
      question = Quizzy::Question.new choices: [choice1]
      response = Quizzy::Response.new choices: [choice1], question: question
    end

    it { should validate_uniqueness_of(:question_id).scoped_to(:quiz_response_id)}
  end

end
