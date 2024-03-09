# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-sort-yaml"
  s.version = "0.3.1"
  s.summary = "Sorts keys of hashes of YAML files"
  s.description = "#{s.summary}\n\ne.g. `sort-yaml config/locales/*`"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/sort-yaml"]
  s.executables << "sort-yaml"
  s.homepage = "https://github.com/dorianmariecom/sort-yaml"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
end
