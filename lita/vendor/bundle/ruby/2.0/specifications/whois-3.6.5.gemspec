# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "whois"
  s.version = "3.6.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Simone Carletti"]
  s.date = "2015-12-25"
  s.description = "Whois is an intelligent WHOIS client and parser written in pure Ruby. It can query registry data for IPv4, IPv6 and top level domains, parse and convert responses into easy-to-use Ruby objects."
  s.email = ["weppos@weppos.net"]
  s.executables = ["whoisrb"]
  s.files = ["bin/whoisrb"]
  s.homepage = "http://whoisrb.org/"
  s.licenses = ["MIT"]
  s.post_install_message = "********************************************************************************\n\n  Thank you for installing the whois gem!\n\n  If you like this gem, please support the project.\n  http://pledgie.com/campaigns/11383\n\n  Does your project or organization use this gem? Add it to the apps wiki.\n  https://github.com/weppos/whois/wiki/apps\n\n********************************************************************************\n"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubyforge_project = "whois"
  s.rubygems_version = "2.0.14.1"
  s.summary = "An intelligent pure Ruby WHOIS client and parser."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 3"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 3"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end
