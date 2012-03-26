# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sinatra-appgen/version"

Gem::Specification.new do |s|
  s.name        = "sinatra-appgen"
  s.version     = SinatraAppgen::VERSION
  s.authors     = ["t_ramu"]
  s.email       = ["dhanegm731@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A simple generator for Sinatra.}
  s.description = %q{A simple generator for Sinatra. Use CoffeeScript and SCSS.}

  s.rubyforge_project = "sinatra-appgen"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
