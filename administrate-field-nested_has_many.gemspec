require "lib/administrate/field/nested_has_many"

Gem::Specification.new do |gem|
  gem.name = "administrate-field-nested_has_many"
  gem.version = Administrate::Field::NestedHasMany::VERSION
  gem.authors = ["Mauricio Giacomini Girardello"]
  gem.email = ["mauriciogiacomini4@gmail.com"]
  gem.homepage = "https://github.com/mgiacomini/administrate-field-nested_has_many"
  gem.summary = "Plugin for nested has_many forms in Administrate"
  gem.description = gem.summary
  gem.license = "MIT"

  gem.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  gem.bindir = 'bin'
  gem.executables = gem.files.grep(%r{^exe/}) { |f| File.basename(f) }
  gem.require_paths = ['lib']
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.add_runtime_dependency "administrate"
  gem.add_runtime_dependency "cocoon", "~> 1.2"
  gem.add_runtime_dependency "rails"

  gem.add_development_dependency 'bundler', '~> 1.12'
  gem.add_development_dependency 'rake', '~> 10.0'
  gem.add_development_dependency 'rspec', '~> 3.4', '>= 3.4.0'
end
