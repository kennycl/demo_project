require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DemoProject
  class Application < Rails::Application
    
    config.to_prepare do
      # Load application's model / class decorators
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
        

      # Load application's view overrides
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
        
        
      

 config.assets.initialize_on_precompile = false
 
 config.paperclip_defaults = {
   config.use_s3 = true
   config.s3_bucket = '<hikennethy>'
   config.s3_access_key = "<AKIAI47HMXASRYQXVLRA>"
   config.s3_secret = "<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>"
  
   }
 
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
