Gem::Specification.new do |s|
  s.name = "humanize_vietnamese"
  s.version = "2.5.0"

  s.required_ruby_version = '>= 2.4'
  s.require_paths = ["lib"]
  s.author = ['bach']
  s.email = "bachpx195@gmail.com"
  s.files         = `git ls-files`.split($/)
  s.test_files    = s.files.grep(%r{^(spec)/})
  s.homepage = "https://github.com/dongta195/humanize_vietnamese"
  s.rubygems_version = "2.5.1"
  s.summary = "Extension to Numeric to humanize numbers in Vietnamese"

  s.add_development_dependency 'mutant'
  s.add_development_dependency 'mutant-rspec'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
end
