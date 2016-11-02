# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minitest/dry/monads/version'

Gem::Specification.new do |spec|
  spec.name          = 'minitest-dry-monads'
  spec.version       = Minitest::Dry::Monads::VERSION
  spec.authors       = ['Boris Kraportov']
  spec.email         = ['boris.kraportov@gmail.com']

  spec.summary       = 'dry-rb monads asserts and expectations for minitest'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/borisaka/minitest-dry-monads'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'pry', '~> 0.10.4'
  spec.add_development_dependency 'pry-rescue', '~> 1.4.4'
  spec.add_development_dependency 'pry-stack_explorer', '~> 0.4.9'
  spec.add_development_dependency 'pry-state', '~> 0.1.7'

  spec.add_runtime_dependency 'minitest', '~> 5.9'
  spec.add_runtime_dependency 'dry-monads', '~> 0.2.0'
end
