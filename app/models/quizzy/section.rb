module Quizzy
  class Section < ApplicationRecord
    default_scope { order(:position) }
    has_many :questions, class_name: 'Quizzy::Question'
  end
end
