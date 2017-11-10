module Quizzy
  class Section < ApplicationRecord
    default_scope { order(:position) }
    has_many :questions, class_name: 'Quizzy::Question'

    before_create :set_position

    def set_position
      return if position.present?
      section = Quizzy::Section.where(quiz_id: quiz_id).order(:position).last
      self.position = section.present? ? section.position + 1 : 1
    end
  end
end
