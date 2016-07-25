#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2015 Simone Carletti <weppos@weppos.net>
#++


require 'whois/record/parser/base_cocca2'


module Whois
  class Record
    class Parser

      # Parser for the whois.tld.sy server.
      #
      # @see Whois::Record::Parser::Example
      #   The Example parser for the list of all available methods.
      #
      class WhoisTldSy < BaseCocca2

        property_supported :status do
          list = Array.wrap(node("Domain Status")).map(&:downcase)
          list.include?("available") ? :available : super()
        end


        property_not_supported :updated_on

      end

    end
  end
end
