# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'g_dogist/version'

Gem::Specification.new do |spec|
  spec.name          = "g_dogist"
  spec.version       = GDogist::VERSION
  spec.authors       = ["nakamura shinichirou"]
  spec.email         = ["naka5313@gmail.com"]
  spec.description   = %q{Gemfileの中身をみて関連情報をドキュメント化するgem}
  spec.summary       = %q{Gemfileの中身を纏めるgem}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'nokogiri'

  spec.files = Dir['lib/**/*.rb'] + Dir['bin/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
end
