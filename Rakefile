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

require 'juwelier'
Juwelier::Tasks.new do |gem|
  # gem is a Gem::Specification...
  # see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "friendly_id-method_scopes"
  gem.summary = "FriendlyId Extension to allow method scopes."
  gem.email = "karen.e.lundgren@gmail.com"
  gem.homepage = "http://www.gemvein.com/museum/cases/friendly_id-method_scopes"
  gem.licenses = ["MIT"]
  gem.description = "FriendlyId Extension to allow method scopes, in addition to column and relationship scopes."
  gem.authors = ["Karen Lundgren"]
end
Juwelier::RubygemsDotOrgTasks.new

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
end
task :default => [:spec]

Bundler::GemHelper.install_tasks

