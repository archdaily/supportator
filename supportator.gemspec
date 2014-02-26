# coding: utf-8
require File.expand_path('../lib/supportator/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "supportator"
  spec.version       = Supportator::VERSION
  spec.authors       = ["ArchDaily DevTeam"]
  spec.email         = ["dev@archdaily.com"]
  spec.summary       = %q{Puts an actualization modal when old browsers are used.}
  spec.homepage      = "http://archdaily.github.io/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
