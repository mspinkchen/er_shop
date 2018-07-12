CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  if Rails.env.production?                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJ7MY4VBPSM6KHWDA',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'www.enjoyrice.com'  
  else 
  config.storage :file                                 # required
end
end
