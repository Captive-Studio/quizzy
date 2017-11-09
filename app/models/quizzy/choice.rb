module Quizzy
  class Choice < Quizzy::ApplicationRecord
    mount_uploader :image, Quizzy::ImageUploader

    delegate :url, to: :image, prefix: true
    alias_attribute :title, :text
    translates :text
    validates :uid, presence: true, uniqueness: true

    default_scope { order(:position) }
  end
end
