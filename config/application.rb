require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BaseCms
  class Application < Rails::Application
    config.load_defaults 5.1
  end

  class Application < Rails::Application
    config.i18n.default_locale = :es
    config.i18n.locale = :es
    config.assets.paths << "#{Rails}/vendor/assets/fonts"
  end
end


