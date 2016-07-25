#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2015 Simone Carletti <weppos@weppos.net>
#++


require 'whois/record/parser/base_afilias2'


module Whois
  class Record
    class Parser

      # Parser for the whois.afilias.net server.
      class WhoisAfiliasNet < BaseAfilias2

        self.scanner = Scanners::BaseAfilias, {
            pattern_disclaimer: /^Access to/
        }

      end

    end
  end
end
