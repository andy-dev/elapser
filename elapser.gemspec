# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'elapser/version'

Gem::Specification.new do |spec|
  spec.name          = "elapser"
  spec.version       = Elapser::VERSION
  spec.authors       = ["andy-dev"]
  spec.email         = ["andres.macedo@gmail.com"]
  spec.summary       = %q{Gem that provides time between now and when something was created using the column created_at that is added when using timestamps macro in an Active Record migration}
  spec.description   = %q{When creating apps, you might find it handy to see how long ago was something created. For example, if you are builing a simple ToDo application, you might want to display how long ago did a particular todo was added to the list}
  spec.homepage      = "https://github.com/andy-dev/elapser"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec' #Development dependencies are ignored at runtime
end
