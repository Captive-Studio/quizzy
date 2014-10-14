$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "quizzy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "quizzy"
  s.version     = Quizzy::VERSION
  s.authors     = ["Captive Studio"]
  s.email       = ["contact@captive.fr"]
  s.homepage    = "http://www.captive/fr"
  s.summary     = "Quiz Engine"
  s.description = "Embed a quiz widget in your Rails app"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4"
  s.add_dependency "carrierwave"
  s.add_dependency "globalize"
  s.add_dependency "mini_magick"

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency "sqlite3"

  s.test_files = Dir["spec/**/*"]
end
