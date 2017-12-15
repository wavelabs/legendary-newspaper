Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w(admin.scss editor.scss landing.scss application.scss)
Rails.application.config.assets.precompile += %w(admin.js editor.js application.js)
