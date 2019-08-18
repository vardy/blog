# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jarredvardy-blog"
  spec.version       = "1.0.0"
  spec.authors       = ["Jarred Vardy", "Tian Qi"]
  spec.email         = ["jarred.vardy@gmail.com"]

  spec.summary       = %q{My personal blog.}
  spec.homepage      = "https://github.com/vardy/blog"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^((_data|_includes|_layouts|_sass|assets)/|(LICENSE|README|CHANGELOG)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", "~> 3.5"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
  spec.add_runtime_dependency "jekyll-sitemap", "~> 1.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9.2"
  spec.add_runtime_dependency "jemoji", "~> 0.8"

  spec.add_development_dependency "bundler", "~> 2.0.2"
  spec.add_development_dependency "rake", "~> 10.0"
end
