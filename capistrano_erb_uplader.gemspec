# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-erb-uploader'
  spec.version       = '0.1.0'
  spec.authors       = ["Babar Al-Amin"]
  spec.email         = ["knock@babar.im"]

  spec.summary       = %q{Parse n Upload ERB files with Capistrano}
  spec.description   = %q{Parse various ERB template based configuration files and upload them with Capistrano.}
  spec.homepage      = 'https://github.com/albabar/capistrano-erb-uploader'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.0.0'
  spec.add_dependency "capistrano", "~> 3.0"
end
