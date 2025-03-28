# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/identity/access_context_manager/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-identity-access_context_manager"
  gem.version       = Google::Identity::AccessContextManager::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Access Context Manager allows enterprises to configure access levels which map to a policy defined on request attributes."
  gem.summary       = "API Client library for the Access Context Manager API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-identity-access_context_manager-v1", ">= 0.7", "< 2.a"
end
