# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boot2docker/version'

Gem::Specification.new do |spec|
  spec.name          = "boot2docker"
  spec.version       = Boot2docker::VERSION
  spec.authors       = ["Takatoshi Maeda"]
  spec.email         = ["me@tmd.tw"]
  spec.summary       = %q{Boot2Docker client for ruby}
  spec.description   = %q{Boot2Docker client for ruby}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
