source "http://rubygems.org"

gemspec

# jquery-rails is used by the dummy application
gem "jquery-rails"
gem 'sqlite3'

gem 'carrierwave'

group :test do
  gem "shoulda-matchers"
end

group :development, :production do
  gem 'mini_magick'
end

group :development do
  gem 'guard-rspec', '~> 4.7', require: false
end