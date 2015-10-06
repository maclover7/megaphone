# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'megaphone'

Gem::Specification.new do |spec|
  spec.name          = "megaphone"
  spec.version       = Megaphone::VERSION
  spec.authors       = "Jon Moss"
  spec.email         = "me@jonathanmoss.me"

  spec.summary       = "Announce all test failures at the end of your Minitest run"
  spec.description   = "Announce all test failures at the end of your Minitest run"
  spec.homepage      = "https://github.com/maclover7/megaphone"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "minitest"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake", "~> 10.0"
end
