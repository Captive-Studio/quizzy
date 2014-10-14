class Reward < ActiveRecord::Base
  mount_uploader :image, Quizzy::ImageUploader

  belongs_to :participant
  default_scope includes([:participant])
end
