# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "rack-non-www-enforcer"
  s.version     = "0.0.1"
  s.authors     = ["Guillermo Iguaran"]
  s.email       = ["guilleiguaran@gmail.com"]
  s.homepage    = "https://github.com/guilleiguaran/rack-www-enforcer"
  s.summary     = %q{Redirect subdomains requesto to the main domain in your app}
  s.description = <<-EOS
    Rack middleware to redirect requests to the main domain in your app.
  EOS

  s.add_dependency 'rack'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
