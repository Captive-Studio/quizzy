class Reward < ActiveRecord::Base
  attr_accessible :image, :name, :quiz_response_id
  mount_uploader :image, Quizzy::ImageUploader
end
