# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "pebbles-suddenly_death_string"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["fukayatsu"]
  s.date = "2013-11-22"
  s.description = "\u{ff1e}\u{3000}\u{7a81}\u{7136}\u{306e}\u{6b7b}\u{3000}\u{ff1c}"
  s.email = ["fukayatsu@gmail.com"]
  s.executables = ["suddenly"]
  s.files = ["bin/suddenly"]
  s.homepage = "https://github.com/fukayatsu/pebbles-suddenly_death_string"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14.1"
  s.summary = "\u{ff1e}\u{3000}\u{7a81}\u{7136}\u{306e}\u{6b7b}\u{3000}\u{ff1c}"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
