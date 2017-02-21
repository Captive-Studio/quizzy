module Quizzy
	class Gift < ApplicationRecord
	  validates_presence_of :attachement, :needed_score

	  mount_uploader :attachement, Quizzy::FileUploader
	  delegate :url, to: :attachement

	end
end
