# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-sort-yaml"
  s.version = File.read("VERSION").strip
  s.summary = "sorts yaml"
  s.description = s.summary
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/sort-yaml"]
  s.executables << "sort-yaml"
  s.homepage = "https://github.com/dorianmariecom/dorian-sort-yaml"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "dorian-arguments"
  s.add_dependency "yaml"
  s.required_ruby_version = ">= 3.3.0"
end
