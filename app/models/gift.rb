class Gift < ActiveRecord::Base
  attr_accessible :attachement, :needed_score, :quiz_id
  validates_presence_of :attachement, :needed_score

  mount_uploader :attachement, Quizzy::ImageUploader
  delegate :url, to: :attachement

end
