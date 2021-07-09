require_relative "lib/haddi/version"

Gem::Specification.new do |spec|
  spec.name          = "haddi"
  spec.version       = Haddi::VERSION
  spec.authors       = ["abeidahmed"]
  spec.email         = ["abeidahmed92@gmail.com"]

  spec.summary       = "A superfast Ruby microframework for web development."
  spec.description   = "A superfast Ruby microframework for web development."
  spec.homepage      = "https://github.com/abeidahmed/haddi"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/abeidahmed/CHANGELOG.md"

  spec.require_paths = ["lib"]
end
