module Quizzy
	class Question < ActiveRecord::Base
	  validates :text, presence: true
    validates :uid, presence: true, uniqueness: true
	  has_many :choices, class_name: Quizzy::Choice
	  accepts_nested_attributes_for :choices, :allow_destroy => true

	  default_scope { order('position').includes([:choices, :translations]) }

	  mount_uploader :image, Quizzy::ImageUploader

	  translates :text

	  def good_choices
	    choices.select(&:good)
	  end
	end
end