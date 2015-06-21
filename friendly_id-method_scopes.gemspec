$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "friendly_id/method_scopes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "friendly_id-method_scopes"
  s.version     = FriendlyId::MethodScopes::VERSION
  s.authors     = ["Karen Lundgren","Chad Lundgren"]
  s.email       = ["karen.e.lundgren@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of FriendlyId::MethodScopes."
  s.description = "TODO: Description of FriendlyId::MethodScopes."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
