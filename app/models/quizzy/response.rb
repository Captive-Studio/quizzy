module Quizzy
  class Response < ActiveRecord::Base
    belongs_to :question, class_name: Quizzy::Response
    has_and_belongs_to_many :choices, class_name: 'Quizzy::Choice'
    validates :question, presence: true
    validates_uniqueness_of :question_id, scope: :quiz_response_id

    def good?
      choices == question.good_choices
    end

    def many_good?
      (question.good_choices & choices).size == choices.size
    end

    def has_made? choice
      choices.include? choice
    end
    
    default_scope { includes([:question, :choices]) }
  end
end
