lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bottom/version'
readme = File.open('README.md')

Gem::Specification.new do |spec|
  spec.name          = "bottom"
  spec.version       = "0.1.0"
  spec.authors       = ["Daggy1234"]

  spec.summary       = "an implementation of the bottom spec in ruby"
  spec.description   = "An easy to use pure ruby implementation of the bottom spec in ruby. Check out https://github.com/bottom-software-foundation/bottom-ruby for more info"
  spec.homepage      = "https://github.com/bottom-software-foundation/bottom-ruby"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bottom-software-foundation/bottom-ruby"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end