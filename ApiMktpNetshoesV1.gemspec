# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ApiMktpNetshoesV1/client/version"

Gem::Specification.new do |s|
  s.name        = "ApiMktpNetshoesV1"
  s.version     = ApiMktpNetshoesV1::Client::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sensedia"]
  s.email       = ["sensedia@sensedia.com"]
  s.homepage    = "http://www.sensedia.com"
  s.summary     = %q{A ruby wrapper for APIs}
  s.description = %q{This gem maps to APIs}
  s.license     = "Apache-2.0"

  s.add_runtime_dependency 'typhoeus', '~> 0.2', '>= 0.2.1'
  s.add_runtime_dependency 'addressable', '~> 2.2', '>= 2.2.4'
  s.add_runtime_dependency 'json', '~> 1.4', '>= 1.4.6'

  s.add_development_dependency 'rspec', '~> 3.2', '>= 3.2.0'
  s.add_development_dependency 'vcr', '~> 2.9', '>= 2.9.3'
  s.add_development_dependency 'webmock', '~> 1.6', '>= 1.6.2'
  s.add_development_dependency 'autotest', '~> 4.4', '>= 4.4.6'
  s.add_development_dependency 'autotest-rails-pure', '~> 4.1', '>= 4.1.2'
  s.add_development_dependency 'autotest-growl', '~> 0.2', '>= 0.2.16'
  s.add_development_dependency 'autotest-fsevent', '~> 0.2', '>= 0.2.10'

  #s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  #s.test_files    = `find spec/*`.split("\n")
  s.files         = Dir.glob("{bin,lib}/**/*")
  s.executables   = []
  s.require_paths = ["lib"]
end
