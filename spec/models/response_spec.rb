require 'spec_helper'

describe Response do
  it { should belong_to :question}
  it { should validate_presence_of :question}
  it { should have_and_belong_to_many :choices }

  describe "good?" do
    it 'is false when all good choices were not selected' do
      choice1 = Choice.new good: true
      choice2 = Choice.new good: true

      question = Question.new choices: [choice1, choice2]
      response = Response.new choices: [choice1], question: question

      response.good?.should be_false
    end
  end

  describe "should be unique" do

    before(:each) do
      choice1 = Choice.new good: true
      question = Question.new choices: [choice1]
      response = Response.new choices: [choice1], question: question
    end

    it { should validate_uniqueness_of(:question_id).scoped_to(:quiz_response_id)}
  end

end
