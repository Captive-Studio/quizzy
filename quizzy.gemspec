$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "quizzy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "quizzy"
  s.version     = Quizzy::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Quizzy."
  s.description = "TODO: Description of Quizzy."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency "sqlite3"

  s.test_files = Dir["spec/**/*"]
end
