lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mountain_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "mountain_view_tool"
  spec.version       = MountainViewTool::VERSION
  spec.authors       = ["leppadoshi"]
  spec.email         = ["3402009-gdoshi@users.noreply.gitlab.com"]

  spec.summary       = %q{how I make gems?}
  spec.description   = %q{I'm making this gem to learn how to make ruby gems}
  spec.homepage      = "https://github.com/leppadoshi/mountain_view_tool"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

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
