
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Cat_finder/version"

Gem::Specification.new do |spec|
  spec.name          = "Cat_finder"
  spec.version       = CatFinder::VERSION
  spec.authors       = ["'Rafael Garcia'"]
  spec.email         = ["'rafagrcb@gmail.com'"]

  spec.summary       = %q{Friendly CatFinder, because RubyGems requires one.}
  spec.homepage      = "https://cattime.com/cat-names/cat-names-by-breed"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://cattime.com/cat-names/cat-names-by-breed."
    spec.metadata["changelog_uri"] = "https://cattime.com/cat-names/cat-names-by-breed."
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
