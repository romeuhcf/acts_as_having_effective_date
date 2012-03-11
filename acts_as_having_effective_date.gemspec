$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_having_effective_date/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_having_effective_date"
  s.version     = ActsAsHavingEffectiveDate::VERSION
  s.authors     = ["Romeu Fonseca"]
  s.email       = ["romeu.hcf@gmail.com"]
  s.homepage    = "https://github.com/romeuhcf/acts_as_having_effective_date"
  s.summary     = "AR Plugin for handling effectiv date."
  s.description = "AR Plugin for handling effectiveness of one of many \"has many\" related models as of a specific date."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2.rc1"

  s.add_development_dependency "sqlite3"
end
