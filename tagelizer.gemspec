# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{tagelizer}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonatan Reiners"]
  s.date = %q{2011-04-21}
  s.description = %q{converts text to an array of words. Uses stemming and spellchecker to produce better results. Build to convert descriptions to tags.}
  s.email = %q{git@encc.de}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/tagelizer.rb",
    "spec/spec_helper.rb",
    "spec/tagelizer_spec.rb",
    "tagelizer.gemspec"
  ]
  s.homepage = %q{http://github.com/enc/tagelizer}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{converts text to array of words for tags}
  s.test_files = [
    "spec/spec_helper.rb",
    "spec/tagelizer_spec.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<raspell>, ["= 1.2"])
      s.add_runtime_dependency(%q<ruby-stemmer>, [">= 0.9.1"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<reek>, ["~> 1.2.8"])
      s.add_development_dependency(%q<rb-fsevent>, [">= 0.3.5"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<growl>, [">= 0"])
    else
      s.add_dependency(%q<raspell>, ["= 1.2"])
      s.add_dependency(%q<ruby-stemmer>, [">= 0.9.1"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<reek>, ["~> 1.2.8"])
      s.add_dependency(%q<rb-fsevent>, [">= 0.3.5"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<growl>, [">= 0"])
    end
  else
    s.add_dependency(%q<raspell>, ["= 1.2"])
    s.add_dependency(%q<ruby-stemmer>, [">= 0.9.1"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<reek>, ["~> 1.2.8"])
    s.add_dependency(%q<rb-fsevent>, [">= 0.3.5"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<growl>, [">= 0"])
  end
end

