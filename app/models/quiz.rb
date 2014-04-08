class Quiz < ActiveRecord::Base
  attr_accessible :name, :title, :gifts_attributes, :should_register_participant, :ends_at, :group, :image, :begin_at
  validates_presence_of :name

  has_many :questions
  has_many :gifts
  has_many :quiz_responses
  has_many :participants, through: :quiz_responses

  mount_uploader :image, Quizzy::ImageUploader
  accepts_nested_attributes_for :gifts

  delegate :count, to: :questions, prefix: true

  def is_finished?
    Time.now > ends_at
  end

  def is_begin?
    Time.now >= begin_at
  end
end