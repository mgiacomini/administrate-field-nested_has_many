#$:.push File.expand_path("../lib", __FILE__)
require_relative "./lib/administrate/field/nested_has_many"

Gem::Specification.new do |gem|
  gem.name = "administrate-field-nested_has_many"
  gem.version = Administrate::Field::NestedHasMany::VERSION
  gem.authors = ["Mauricio Giacomini Girardello"]
  gem.email = ["mauriciogiacomini4@gmail.com"]
  gem.homepage = "https://github.com/mgiacomini/administrate-field-nested_has_many"
  gem.summary = "Plugin for nested has_many forms in Administrate"
  gem.description = gem.summary
  gem.license = "MIT"

  gem.require_paths = ["lib"]
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.add_dependency "administrate"
  gem.add_dependency "cocoon", "~> 1.2"
  gem.add_dependency "rails"
end
