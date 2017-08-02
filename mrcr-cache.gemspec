# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mrcr/cache/version'

Gem::Specification.new do |spec|
  spec.name          = 'mrcr-cache'
  spec.version       = Mrcr::Cache::VERSION
  spec.authors       = ['Alexander Merkulov']
  spec.email         = ['sasha@merqlove.ru']

  spec.summary       = %q{Cache between class instances.}
  spec.description   = %q{Standard inmemory cache library. To be used between class instances.}
  spec.homepage      = "http://github.com/merqlove/mrcr-cache"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'concurrent-ruby', '~> 1.0'

  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
