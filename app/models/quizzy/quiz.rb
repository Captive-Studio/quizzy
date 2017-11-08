module Quizzy
  class Quiz < Quizzy::ApplicationRecord
    validates_presence_of :name

    has_many :sections, class_name: 'Quizzy::Section'
    has_many :gifts, class_name: 'Quizzy::Gift'
    has_many :quiz_responses, class_name: 'Quizzy::QuizResponse'
    has_many :participants, through: :quiz_responses
    has_many :rewards, class_name: 'Quizzy::Reward'
    has_many :questions, through: :sections

    mount_uploader :image, Quizzy::ImageUploader
    accepts_nested_attributes_for :gifts
    accepts_nested_attributes_for :rewards, allow_destroy: true

    delegate :count, to: :questions, prefix: true

    def is_finished?
      Time.now > ends_at
    end

    def is_begin?
      Time.now >= begin_at
    end

    def has_rewards?
      quizzy_rewards.size > 0
    end
  end
end