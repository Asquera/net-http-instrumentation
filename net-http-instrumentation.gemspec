# -*- encoding: utf-8 -*-
require File.expand_path('../lib/net-http-instrumentation/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Felix Gilcher"]
  gem.email         = ["felix.gilcher@asquera.de"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "net-http-instrumentation"
  gem.require_paths = ["lib"]
  gem.version       = Net::Http::Instrumentation::VERSION
end
