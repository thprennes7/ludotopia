# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( tictactoe/show.js.erb )

# ybo: add vendor/assets and pictures
Rails.application.config.assets.paths << Rails.root.join('vendor')
Rails.application.config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
Rails.application.config.assets.precompile += %w( admin.js )
Rails.application.config.assets.precompile += %w( particles.js )
Rails.application.config.assets.precompile += %w( particle-dependance.js )
Rails.application.config.assets.precompile += %w( googleMap.js )