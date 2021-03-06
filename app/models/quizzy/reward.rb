module Quizzy
	class Reward < ActiveRecord::Base
	  mount_uploader :image, Quizzy::ImageUploader

	  belongs_to :participant, class_name: Quizzy.user_class
	  default_scope { includes([:participant]) }
	end
end