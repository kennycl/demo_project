# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# Note: If a preference is set here it will be stored within the cache & database upon initialization.
#       Just removing an entry from this initializer will not make the preference value go away.
#       Instead you must either set a new value or remove entry, clear cache, and remove database entry.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|

  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
end

Spree.user_class = "Spree::User"

Spree.config do |config|
  config.use_s3 = true
  config.s3_bucket = '<hikennethy>'
  config.s3_access_key = "<AKIAI47HMXASRYQXVLRA>"
  config.s3_secret = "<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>"
end