module Quizzy
  class Section < ApplicationRecord
    has_many :questions, class_name: 'Quizzy::Question'
  end
end
