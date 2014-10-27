module Quizzy
  class QuizResponse < ActiveRecord::Base
    belongs_to :quiz, class_name: Quizzy::Quiz
    belongs_to :participant, class_name: Quizzy.user_class
    belongs_to :country

    validates_presence_of :quiz
    validates_uniqueness_of :participant_id, scope: :quiz_id, allow_nil: true 

    has_many :responses, dependent: :destroy, class_name: Quizzy::Response

    delegate :questions_count, :gifts, to: :quiz

    delegate :firstname, :lastname, :email, :created_at, :entity, :position, to: :participant, prefix: true, allow_nil: true

    before_save :calculate_score

    default_scope { includes([:participant]) }

    def current_question
      (quiz.questions - responses.collect(&:question)).first
    end

    def calculate_score
      self.score = responses.select{|r| r.good?}.count
    end

    def calculate_score_many_good
      self.score = responses.select{|r| r.many_good?}.count
    end

    def complete?
      !current_question
    end

    def last_activity
      responses.last.created_at.strftime('%d/%m/%y')
    end

    def just_earned_gift?
      !!earned_gift
    end

    def earned_gift
      gifts.find{|gift| gift.needed_score == score} if responses.last.good?
    end
    
    def scored_max?
      score == questions_count
    end
  end
end