Cloudinary.config do |config|
  config.cloud_name = Rails.application.credentials.production[:cloud_name]
  config.api_key    = Rails.application.credentials.production[:api_key]
  config.api_secret = Rails.application.credentials.production[:api_secret]
end
