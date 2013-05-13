class Choice < ActiveRecord::Base
  attr_accessible :good, :image, :text, :position
  #mount_uploader :image, LogoUploader

  #translates :text
  validates :text, presence: true

  default_scope order('position').includes(:translations)
end
