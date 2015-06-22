# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: friendly_id-method_scopes 0.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "friendly_id-method_scopes"
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Karen Lundgren"]
  s.date = "2015-06-22"
  s.description = "FriendlyId Extension to allow method scopes."
  s.email = "karen.e.lundgren@gmail.com"
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    ".rspec",
    ".ruby-gemspec",
    ".ruby-version",
    "Gemfile",
    "Gemfile.lock",
    "MIT-LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "friendly_id-method_scopes.gemspec",
    "lib/friendly_id/method_scopes.rb",
    "lib/friendly_id/method_scopes/version.rb",
    "spec/controllers/authors_controller_spec.rb",
    "spec/controllers/books_controller_spec.rb",
    "spec/dummy/Rakefile",
    "spec/dummy/app/assets/javascripts/application.js",
    "spec/dummy/app/assets/stylesheets/application.css",
    "spec/dummy/app/assets/stylesheets/scaffold.css",
    "spec/dummy/app/controllers/application_controller.rb",
    "spec/dummy/app/controllers/authors_controller.rb",
    "spec/dummy/app/controllers/books_controller.rb",
    "spec/dummy/app/models/.keep",
    "spec/dummy/app/models/author.rb",
    "spec/dummy/app/models/book.rb",
    "spec/dummy/app/models/role.rb",
    "spec/dummy/bin/bundle",
    "spec/dummy/bin/rails",
    "spec/dummy/bin/rake",
    "spec/dummy/bin/setup",
    "spec/dummy/config.ru",
    "spec/dummy/config/application.rb",
    "spec/dummy/config/boot.rb",
    "spec/dummy/config/database.yml",
    "spec/dummy/config/environment.rb",
    "spec/dummy/config/environments/development.rb",
    "spec/dummy/config/environments/production.rb",
    "spec/dummy/config/environments/test.rb",
    "spec/dummy/config/initializers/assets.rb",
    "spec/dummy/config/initializers/backtrace_silencers.rb",
    "spec/dummy/config/initializers/cookies_serializer.rb",
    "spec/dummy/config/initializers/filter_parameter_logging.rb",
    "spec/dummy/config/initializers/inflections.rb",
    "spec/dummy/config/initializers/mime_types.rb",
    "spec/dummy/config/initializers/rolify.rb",
    "spec/dummy/config/initializers/session_store.rb",
    "spec/dummy/config/initializers/wrap_parameters.rb",
    "spec/dummy/config/locales/en.yml",
    "spec/dummy/config/routes.rb",
    "spec/dummy/config/secrets.yml",
    "spec/dummy/db/migrate/20150621221655_create_books.rb",
    "spec/dummy/db/migrate/20150621221732_create_authors.rb",
    "spec/dummy/db/migrate/20150622182214_rolify_create_roles.rb",
    "spec/dummy/db/schema.rb",
    "spec/dummy/db/seeds.rb",
    "spec/dummy/db/seeds/authors.seeds.rb",
    "spec/dummy/db/seeds/books.seeds.rb",
    "spec/dummy/lib/assets/.keep",
    "spec/dummy/log/.keep",
    "spec/dummy/public/404.html",
    "spec/dummy/public/422.html",
    "spec/dummy/public/500.html",
    "spec/dummy/public/favicon.ico",
    "spec/factories/author.rb",
    "spec/factories/book.rb",
    "spec/models/author_spec.rb",
    "spec/models/book_spec.rb",
    "spec/rails_helper.rb",
    "spec/routing/authors_routing_spec.rb",
    "spec/routing/books_routing_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/authors.rb",
    "spec/support/books_with_authors.rb"
  ]
  s.homepage = "http://www.gemvein.com/museum/cases/friendly_id-method_scopes"
  s.rubygems_version = "2.4.5"
  s.summary = "FriendlyId Extension to allow method scopes."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["~> 4"])
      s.add_runtime_dependency(%q<friendly_id>, ["~> 5"])
      s.add_runtime_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<shoulda-matchers>, [">= 0"])
      s.add_development_dependency(%q<rolify>, [">= 0"])
      s.add_development_dependency(%q<seedbank>, ["~> 0.4.0.pre"])
      s.add_development_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_development_dependency(%q<faker>, [">= 0"])
      s.add_development_dependency(%q<haml>, [">= 0"])
      s.add_development_dependency(%q<database_cleaner>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["~> 4"])
      s.add_dependency(%q<friendly_id>, ["~> 5"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<shoulda-matchers>, [">= 0"])
      s.add_dependency(%q<rolify>, [">= 0"])
      s.add_dependency(%q<seedbank>, ["~> 0.4.0.pre"])
      s.add_dependency(%q<factory_girl_rails>, [">= 0"])
      s.add_dependency(%q<faker>, [">= 0"])
      s.add_dependency(%q<haml>, [">= 0"])
      s.add_dependency(%q<database_cleaner>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["~> 4"])
    s.add_dependency(%q<friendly_id>, ["~> 5"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<shoulda-matchers>, [">= 0"])
    s.add_dependency(%q<rolify>, [">= 0"])
    s.add_dependency(%q<seedbank>, ["~> 0.4.0.pre"])
    s.add_dependency(%q<factory_girl_rails>, [">= 0"])
    s.add_dependency(%q<faker>, [">= 0"])
    s.add_dependency(%q<haml>, [">= 0"])
    s.add_dependency(%q<database_cleaner>, [">= 0"])
  end
end

