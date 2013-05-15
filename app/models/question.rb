class Question < ActiveRecord::Base
  attr_accessible :position, :text, :choices_attributes, :choices
  validates_presence_of :text
  has_many :choices
  accepts_nested_attributes_for :choices, :allow_destroy => true

  default_scope order('position').includes([:choices, :translations])

  translates :text

  def good_choices
    choices.select(&:good)
  end

end
