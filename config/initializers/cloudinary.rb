Cloudinary.config do |config|
  config.cloud_name = Rails.application.credentials.send(Rails.env)[:cloud_name]
  config.api_key    = Rails.application.credentials.send(Rails.env)[:api_key]
  config.api_secret = Rails.application.credentials.send(Rails.env)[:api_secret]
end
