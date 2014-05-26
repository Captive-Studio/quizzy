class Reward < ActiveRecord::Base
  attr_accessible :image, :name, :quiz_id, :participant_id
  mount_uploader :image, Quizzy::ImageUploader

  belongs_to :participant
  default_scope includes([:participant])
end
