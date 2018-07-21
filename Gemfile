source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootstrap', '~> 4.1.1'
gem 'coffee-rails', '~> 4.2'
gem 'devise' # Authentication
gem 'dotenv-rails', require: 'dotenv/rails-now'
gem 'haml-rails'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'measured-rails'
gem 'pg'
gem 'puma', '~> 3.11'
gem 'pundit' # Authorization
gem 'rails', '~> 5.2.0'
gem 'react-rails'
gem 'sass-rails', '~> 5.0'
gem 'simple_form' # Simple Form DSL
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'webpacker', '~> 3.5'
gem 'will_paginate' # collection pagination

# Shrine
gem 'fastimage'
gem 'image_processing'
gem 'mini_magick', '>= 4.3.5'
gem 'shrine'
gem 'shrine-memory'

# gem 'redis', '~> 4.0' # Use Redis adapter to run Action Cable in production

gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'dotenv-rails'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'rubocop', '0.58.0'
  gem 'shoulda-matchers', '~> 3.1.0' # RSpec matchers
  gem 'simplecov', require: false
end

group :development do
  gem 'annotate'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
