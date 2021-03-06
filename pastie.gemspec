# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{bantic-pastie}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Cory"]
  s.date = %q{2009-12-17}
  s.default_executable = %q{pastie}
  s.description = %q{Create a new pastie: $ pastie -- reads from clipboard and replaces clipboard with url}
  s.email = %q{cory.forsyth@gmail.com}
  s.executables = ["pastie"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/pastie",
     "lib/pastie.rb",
     "pastie.gemspec",
     "test/helper.rb",
     "test/test_pastie.rb"
  ]
  s.homepage = %q{http://github.com/bantic/pastie}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Command-line interface to pastie}
  s.test_files = [
    "test/helper.rb",
     "test/test_pastie.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

