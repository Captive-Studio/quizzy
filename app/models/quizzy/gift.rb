module Quizzy
	class Gift < ActiveRecord::Base
	  validates_presence_of :attachement, :needed_score

	  mount_uploader :attachement, Quizzy::FileUploader
	  delegate :url, to: :attachement

	end
end
