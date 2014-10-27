require 'spec_helper'

describe Quizzy::Question do
  it { should validate_presence_of :text}
  it { should have_many :choices }
  it { should have_many :translations }

  describe "good_choices" do
    it "should return the good choices" do
      choice_1 = Quizzy::Choice.new good: true, text: "choice_1" 
      choice_2 = Quizzy::Choice.new good: false, text: "choice_2" 
      choice_3 = Quizzy::Choice.new good: true, text: "choice_3" 

      question = Quizzy::Question.new choices: [choice_1,choice_2,choice_3]
      question.good_choices.should == [choice_1, choice_3]
    end
  end

end
