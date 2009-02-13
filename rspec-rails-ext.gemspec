# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rspec-rails-ext}
  s.version = "1.003"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Rahoul Baruah"]
  s.date = %q{2009-02-13}
  s.description = %q{Helpers for prettying up your RSpec-Rails specifications}
  s.email = %q{support@brightbox.co.uk}
  s.extra_rdoc_files = ["CHANGELOG", "lib/controller_example_group.rb", "lib/responses.rb", "lib/rspec_rails_extensions.rb", "README.rdoc"]
  s.files = ["CHANGELOG", "lib/controller_example_group.rb", "lib/responses.rb", "lib/rspec_rails_extensions.rb", "LICENCE", "Manifest", "Rakefile", "README.rdoc", "rspec-rails-ext.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/brightbox-rspec-rails-ext}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Rspec-rails-ext", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rspec-rails-ext}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Helpers for prettying up your RSpec-Rails specifications}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<echoe>, [">= 0"])
    else
      s.add_dependency(%q<echoe>, [">= 0"])
    end
  else
    s.add_dependency(%q<echoe>, [">= 0"])
  end
end
