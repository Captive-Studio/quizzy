require 'spec_helper'

describe Quizzy::QuizResponse do
  attr_reader :quiz, :quiz_response, :question

  it { should validate_presence_of :quiz }
  it { should have_many :responses }
  it { should belong_to :participant }

  before :each do
    @quiz = Quizzy::Quiz.new
    @quiz_response = Quizzy::QuizResponse.new quiz: quiz
    @question = Quizzy::Question.new
  end

  describe 'current_question' do

    it "is nil when quiz has no question" do
      quiz.questions = []
      expect(quiz_response.current_question).to be_nil
    end

    it "is the first question of the quiz" do
      quiz.questions = [question]
      expect(quiz_response.current_question).to eq(question)
    end

    it "is nil when all questions has been answered" do
      quiz.questions = [question]
      quiz_response.responses.build question: question
      expect(quiz_response.current_question).to be_nil
    end
  end

  describe 'score' do
    it "is 0 for a new quiz_response" do
      expect(Quizzy::QuizResponse.new.score).to eq(0)
    end

    it "is 1 when with a good response" do
      add_a_choice_where_good_is true

      quiz_response.calculate_score
      expect(quiz_response.score).to eq(1)
    end
  end

  describe 'just earned gift' do
    before :each do
      add_a_choice_where_good_is true
    end

    it "is false when quiz is empty" do
      quiz.questions = []
      expect(quiz_response.earned_gift).to be_nil
      expect(quiz_response.just_earned_gift?).to be false
    end

    it "is true when the needed_score is reached" do
      gift = add_a_gift_at_needed_score 7
      quiz_response.score = 7

      expect(quiz_response.earned_gift).to eq(gift)
      expect(quiz_response.just_earned_gift?).to be true
    end

    it "is false when the needed score is not reached" do
      add_a_gift_at_needed_score 10
      quiz_response.score = 7

      expect(quiz_response.earned_gift).to be_nil
    end

    it "is false when the needed score is less than the score" do
      add_a_gift_at_needed_score 3
      quiz_response.score = 5
be_nil
      expect(quiz_response.earned_gift).to be_nil
    end

    it "is true in the second gift is reached" do
      add_a_gift_at_needed_score 2
      gift = add_a_gift_at_needed_score 6
      quiz_response.score = 6

      expect(quiz_response.earned_gift).to eq(gift)
    end

    it "is false if the last response was wrong" do
      add_a_choice_where_good_is false
      gift = add_a_gift_at_needed_score 6
      quiz_response.score = 6

      expect(quiz_response.earned_gift).to be_nil
    end
  end

  def add_a_gift_at_needed_score needed_score
    gift = Quizzy::Gift.new needed_score: needed_score
    quiz.gifts << gift
    gift
  end

  def add_a_choice_where_good_is how
    choice = question.choices.build good: how
    question.choices = [choice]
    quiz_response.responses.build choices: [choice], question: question
  end
end
