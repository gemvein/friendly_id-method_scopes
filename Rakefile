begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

require 'rdoc/task'

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'FriendlyId::MethodScopes'
  rdoc.options << '--line-numbers'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "friendly_id-method_scopes"
    s.summary = "FriendlyId Extension to allow method scopes."
    s.email = "karen.e.lundgren@gmail.com"
    s.homepage = "http://www.gemvein.com/museum/cases/friendly_id-method_scopes"
    s.description = "FriendlyId Extension to allow method scopes."
    s.authors = ["Karen Lundgren"]
  end
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end
task :default => [:spec]

Bundler::GemHelper.install_tasks

