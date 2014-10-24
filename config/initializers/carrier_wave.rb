if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for GCS
      :provider              => 'Google',
      :aws_access_key_id     => ENV['GCS_ACCESS_KEY'],
      :aws_secret_access_key => ENV['GCS_SECRET_KEY']
    }
    config.fog_directory     =  ENV['GCS_BUCKET']
  end
end