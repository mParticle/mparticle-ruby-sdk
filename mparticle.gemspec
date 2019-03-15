Gem::Specification.new do |s|
  s.name        = "mparticle"
  s.version     = "1.0.3"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["mParticle Inc."]
  s.email       = ["support@mparticle.com"]
  s.homepage    = "https://www.mparticle.com"
  s.summary     = "Ruby client for the mParticle platform"
  s.description = "Use this client to send your data into the mParticle platform."
  s.license     = "Apache-2.0"
  s.required_ruby_version = ">= 1.9"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'
  s.add_runtime_dependency 'json', '~> 1.8', '>= 1.8.3'

  s.files         = `find *`.split("\n").uniq.sort.select{|f| !f.empty? }
  s.executables   = []
  s.require_paths = ["lib"]
end
