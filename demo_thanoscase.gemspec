# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name          = "demo_thanoscase"
  s.version       = "0.0.2"
  s.date          = "2019-04-26"
  s.summary       = "Thanos gem"
  s.description   = "A simple way to wipe out half the universe"
  s.authors       = ["Nicolas Sebastian Vidal"]
  s.email         = "nicolas.s.vidal@gmail.com"
  s.homepage      = "http://rubygems.org/gems/demo_thanoscase"
  s.require_paths = ["lib"]
  s.license       = "MIT"
  s.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.required_ruby_version = ">= 2.5.0"
  s.add_development_dependency "rspec", "~> 3.8"
end
