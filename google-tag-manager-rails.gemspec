$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "google-tag-manager/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "google-tag-manager-rails"
  s.version     = GoogleTagManager::VERSION
  s.authors     = ["Ryan Sorensen"]
  s.email       = ["rcsorensen@gmail.com"]
  s.homepage    = "http://github.com/rcs/google-tag-manager-rails"
  s.summary     = "Google Tag Manager helpers for Rails"
  s.description = "Use Google Tag Manager ( http://www.google.com/tagmanager/ ) in your Rails application."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.0.0"

  s.add_development_dependency "sqlite3"
end
