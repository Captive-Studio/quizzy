source "http://rubygems.org"

# Declare your gem's dependencies in quizzy.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# jquery-rails is used by the dummy application
gem "jquery-rails"

gem 'carrierwave'
gem "globalize", github: 'globalize/globalize'

group :test do
  gem "shoulda-matchers"
end

group :development, :production do
  gem 'mini_magick'
end

group :development do
   gem 'guard-rspec', '~> 4.7', require: false
end