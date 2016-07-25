# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "io-console"
  s.version = "0.4.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nobu Nakada"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDcDCCAligAwIBAgIBATANBgkqhkiG9w0BAQUFADA/MQ0wCwYDVQQDDARub2J1\nMRkwFwYKCZImiZPyLGQBGRYJcnVieS1sYW5nMRMwEQYKCZImiZPyLGQBGRYDb3Jn\nMB4XDTE1MTIyMjEzNDAyOFoXDTE2MTIyMTEzNDAyOFowPzENMAsGA1UEAwwEbm9i\ndTEZMBcGCgmSJomT8ixkARkWCXJ1YnktbGFuZzETMBEGCgmSJomT8ixkARkWA29y\nZzCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANduwQ8upTFS4aOBPQQ0\n2aRqo8otV3QgKRNy3DYwL2ugeZ4F/wAk3KdVeXnDW2Hkj9Yv33FLUKytq9QuhaG4\n3LmKnVWVbr+G0w/qtv8BIH5w9ajq89YI4X6+fOLasfHXHe/GzPW8siEszFqfEVLi\nLrwipHxurRmiKR4/CyeMTbIaeS2guK1Srj1UCM71OuA18PdbPx+nnZGDRJj6satU\nf3cRPJZdGntrl8ZddzYmkhDK+i7GxbnxMCxw1j3GOhkPXdwy95l3nkuU18kv/Cqn\nQJvmgWgwPtH7ytuhnkIa9cgB44SKGYPvMoWrYaEPjv3v33TPk72vK6WQG1MiykxK\npHMCAwEAAaN3MHUwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFNNR\n10GwXP4sPVZBhDQwl+J5msFjMB0GA1UdEQQWMBSBEm5vYnVAcnVieS1sYW5nLm9y\nZzAdBgNVHRIEFjAUgRJub2J1QHJ1YnktbGFuZy5vcmcwDQYJKoZIhvcNAQEFBQAD\nggEBAAOTOY2YqMGNEBl3EJGymZKYjhSrP7m9g7WreCGRIAPvhc1Ad5nCaU3rhytF\n9ayF2X6/RGfO0JqLK0ibMS4AXDoSmzngs1YavbpgrFvDr/GDklDn0PeYwvnIjqHF\n3edYnfvOwpPshdIcSGB++HR1k+MsVQ+thJBg90qvEBXB240paJBebo66AwtnRMtl\n2s+U8KA5K21h0B3oZO7MPplyoBnkKIi2wM2vXd+bwy2vdDjCm4TmGE3s4tChPqJl\nZgehHiYUmHxhsoXmVbst3GP52kHNAhVA7+pMpYuYT7glqpuM0sPxtXCucBCBc8Fw\ndUVKuhl19UL3hBtgLSctsrsoXuo=\n-----END CERTIFICATE-----\n"]
  s.date = "2015-12-24"
  s.description = "add console capabilities to IO instances."
  s.email = "nobu@ruby-lang.org"
  s.extensions = ["extconf.rb"]
  s.files = ["extconf.rb"]
  s.homepage = "http://www.ruby-lang.org"
  s.licenses = ["BSD-2-Clause"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.rubygems_version = "2.0.14.1"
  s.summary = "Console interface"
end
