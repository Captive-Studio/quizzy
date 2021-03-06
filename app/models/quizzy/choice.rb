module Quizzy
	class Choice < ActiveRecord::Base
	  mount_uploader :image, Quizzy::ImageUploader

	  delegate :url, to: :image, prefix: true

	  translates :text
	  #validates :text, presence: true
    validates :uid, presence: true, uniqueness: true

	  default_scope { order('position') }
	end
end
