module Quizzy
  class Question < Quizzy::ApplicationRecord
    belongs_to :section
    validates :text, presence: true
    validates :uid, presence: true, uniqueness: true
    has_many :choices, class_name: 'Quizzy::Choice'
    accepts_nested_attributes_for :choices, allow_destroy: true

    default_scope { order(:position) }

    attribute :text

    mount_uploader :image, Quizzy::ImageUploader

    translates :text

    def good_choices
      choices.select(&:good)
    end

    def next_question
      question = Quizzy::Question.find_by(position: position + 1, section: section)
      return question if question.present?
      first_question_of_next_section
    end

    def first_question_of_next_section
      Quizzy::Question.includes(:section)
                      .where(
                        quizzy_sections: {
                          quiz_id: section.quiz_id,
                          position: section.position + 1
                        },
                        position: 1
                      ).first
    end
  end
end
