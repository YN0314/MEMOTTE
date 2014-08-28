source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.1.5'

# Data store
gem 'mysql2'
# gem 'redis-rails'
# gem 'redis-object'

# Template/Style
gem 'haml-rails'
gem 'sass-rails', '~> 4.0.3'
gem 'jbuilder', '~> 2.0'

# JavaScript
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'therubyracer', platforms: :ruby

# Paginater
gem 'kaminari'

# Decorator
gem 'draper'

# Images
# gem 'paperclip'

# Async & Bach
# gem 'sidekiq'
# gem 'sidekiq-cron'
# gem 'sinatra', require: false
# gem 'slim'

gem 'sdoc', '~> 0.4.0', group: :doc

group :production do
  gem 'unicorn'
  # gem 'exception_notification'
end

group :development, :test do
  gem 'spring'
  gem 'bullet'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rack-mini-profiler'
  gem 'annotate'
  gem 'quiet_assets'
end

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'webrat'
  gem 'factory_girl_rails'
  # gem 'simplecov'
  # gem 'simplecov-rcov'
  # gem 'capistrano'
end
