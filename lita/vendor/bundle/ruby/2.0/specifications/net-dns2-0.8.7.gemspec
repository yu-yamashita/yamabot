# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "net-dns2"
  s.version = "0.8.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marco Ceresa", "Simone Carletti", "Christopher Carpenter"]
  s.date = "2015-05-18"
  s.description = "Net::DNS is a pure Ruby DNS library, with a clean OO interface and an extensible API. The net-dns2 ruby gem is an actively maintained fork of the original net-dns."
  s.email = "mordocai@mordocai.net"
  s.homepage = "http://github.com/mordocai/net-dns"
  s.licenses = ["Ruby"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.0.14.1"
  s.summary = "Pure Ruby DNS library, fork with fixes."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<packetfu>, [">= 0"])
    else
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<packetfu>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<packetfu>, [">= 0"])
  end
end
