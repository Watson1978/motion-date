# -*- encoding: utf-8 -*-
VERSION = "1.0"

Gem::Specification.new do |spec|
  spec.name          = "motion-date"
  spec.version       = VERSION
  spec.authors       = [""]
  spec.email         = ["watson1978@gmail.com"]
  spec.description   = %q{This is RubyMotion library which provides methods of Date/DateTime/Time which are same as CRuby Standard Library.}
  spec.summary       = %q{This is RubyMotion library which provides methods of Date/DateTime/Time which are same as CRuby Standard Library.}
  spec.homepage      = "https://github.com/Watson1978/motion-date"
  spec.license       = "MIT"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
