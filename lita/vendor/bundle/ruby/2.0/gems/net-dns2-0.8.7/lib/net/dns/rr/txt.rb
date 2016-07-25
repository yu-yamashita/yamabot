module Net # :nodoc:
  module DNS
    class RR

      #------------------------------------------------------------
      # RR type TXT
      #------------------------------------------------------------
      class TXT < RR
        attr_reader :txt

        private

        def build_pack
          str = ""
          @txt.split(" ").each do |txt|
            str += [txt.length,txt].pack("C a*")
          end
          @txt_pack = str
          @rdlength = @txt_pack.size
        end

        def get_inspect
          "\"#{@txt}\""
        end

        def get_data
          @txt_pack
        end

        def subclass_new_from_hash(args)
          if args.has_key? :txt
            @txt = args[:txt].strip
          else
            raise ArgumentError, ":txt field is mandatory but missing"
          end
        end

        def subclass_new_from_string(str)
          @txt = str.strip
          if @txt[0] == '"' and @txt[-1] == '"'
            @txt = @txt[1, @txt.length-2]
          else
            raise ArgumentError, "TXT RR data must be enclosed in \"quotes\""
          end
        end

        def subclass_new_from_binary(data,offset)
          off_end = offset + @rdlength
          rs = []
          while offset < off_end
            len = data.unpack("@#{offset} C")[0]
            offset += 1
            str = data[offset..offset+len-1]
            offset += len
            rs << str
          end
          @txt = rs.join(" ")
          return offset
        end

        private

          def set_type
            @type = Net::DNS::RR::Types.new("TXT")
          end

      end

    end
  end
end
