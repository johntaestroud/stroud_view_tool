# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stroud_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "stroud_view_tool"
  spec.version       = StroudViewTool::VERSION
  spec.authors       = ["Johntae Stroud"]
  spec.email         = ["johntae.stroud@gmail.com"]

  spec.summary       = %q{View specific methods for application use}
  spec.description   = %q{HTML data for Rails}
  spec.homepage      = "https://stroudapps.com"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
