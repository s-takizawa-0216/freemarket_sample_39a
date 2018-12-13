class ImageUploader < CarrierWave::Uploader::Base
  if Rails.env.development? || Rails.env.test?
    storage :file
  else Rails.env.production?
    storage :fog
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def filename
    original_filename if original_filename
  end
end
