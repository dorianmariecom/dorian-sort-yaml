Gem::Specification.new do |s|
  s.name = 'dorian-sort-yaml'
  s.version = '0.1.0'
  s.summary = 'Sorts keys of hashes of YAML files'
  s.description = s.summary + "\n\n" + 'e.g. `sort-yaml config/locales/*`'
  s.authors = ['Dorian Marié']
  s.email = 'dorian@dorianmarie.fr'
  s.files = ['lib/dorian/sort-yaml.rb']
  s.executables << 'sort-yaml'
  s.homepage = 'https://github.com/dorianmariefr/sort-yaml'
  s.license = 'MIT'
end
