# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rails-xss}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Koziarski"]
  s.date = %q{2009-11-10}
  s.description = %q{RailsXss}
  s.email = %q{michael@koziarski.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "MIT-LICENSE",
     "README.markdown",
     "Rakefile",
     "install.rb",
     "lib/av_patch.rb",
     "lib/rails_xss.rb",
     "lib/rails_xss_escaping.rb",
     "rails/init.rb",
     "tasks/rails_xss_tasks.rake",
     "test/rails_xss_test.rb",
     "test/test_helper.rb",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/NZKoz/rails_xss/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Replaces the default ERB template handlers with erubis, and switches the behaviour to escape by default}
  s.test_files = [
    "test/rails_xss_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<erubis>, [">= 2.6.5"])
    else
      s.add_dependency(%q<erubis>, [">= 2.6.5"])
    end
  else
    s.add_dependency(%q<erubis>, [">= 2.6.5"])
  end
end

