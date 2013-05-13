module Quizzy
  class ImageUploader < CarrierWave::Uploader::Base
    include CarrierWave::MiniMagick

    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end

    # Provide a default URL as a default if there hasn't been a file uploaded:
    def default_url
      "missing.gif"
    end

    version :quiz_partner do
      process :resize_to_fill => [200, 220]
    end

    version :quiz do
      process :resize_to_fill => [145, 125]
    end

  end
end