class Quiz < ActiveRecord::Base
  validates_presence_of :name

  has_many :questions
  has_many :gifts
  has_many :quiz_responses
  has_many :participants, through: :quiz_responses
  has_many :rewards

  mount_uploader :image, Quizzy::ImageUploader
  accepts_nested_attributes_for :gifts
  accepts_nested_attributes_for :rewards, :allow_destroy => true

  delegate :count, to: :questions, prefix: true

  def is_finished?
    Time.now > ends_at
  end

  def is_begin?
    Time.now >= begin_at
  end

  def has_rewards?
    rewards.size > 0
  end
end