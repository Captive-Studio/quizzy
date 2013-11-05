class QuizResponse < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :participant
  belongs_to :country

  attr_accessible :quiz, :quiz_id, :participant_id, :quiz_response, :question, :participant, :country

  validates_presence_of :quiz
  # validates_uniqueness_of :participant_id, scope: :quiz_id

  has_many :responses, dependent: :destroy

  delegate :questions_count, :gifts, to: :quiz

  delegate :firstname, :lastname, :email, :created_at, :entity, :position, to: :participant, prefix: true, allow_nil: true

  before_save :calculate_score

  default_scope includes(:participant)

  def current_question
    (quiz.questions - responses.collect(&:question)).first
  end

  def calculate_score
    self.score = responses.select{|r| r.good?}.count
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

end
