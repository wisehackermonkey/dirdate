
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dirdate/version"

Gem::Specification.new do |spec|
  spec.name          = "dirdate"
  spec.version       = Dirdate::VERSION
  spec.authors       = ["wisehackermonkey"]
  spec.email         = ["oranbusiness@gmail.com"]

  spec.summary       = %q{creates a folder with date in the name. ex 20190125_project_dir.}
  spec.description   = %q{creates folder names with date in front.}
  spec.homepage      = "https://github.com/wisehackermonkey/mkdir-with-date"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = ['dirdate']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
