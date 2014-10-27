module Quizzy
  class Response < ActiveRecord::Base
    belongs_to :question, class_name: Quizzy::Question
    has_and_belongs_to_many :choices, class_name: 'Quizzy::Choice'
    validates :question, presence: true
    validates_uniqueness_of :question_id, scope: :quiz_response_id
    default_scope { includes([:question, :choices]) }

    def good?
      choices == question.good_choices
    end

    def has_made? choice
      choices.include? choice
    end
    
  end
end
