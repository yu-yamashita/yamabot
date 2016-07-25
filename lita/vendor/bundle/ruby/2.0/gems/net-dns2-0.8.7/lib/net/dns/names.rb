module Net # :nodoc:
  module DNS

    module Names

      # Base error class.
      class Error < StandardError
      end

      # Generic Names Error.
      class ExpandError < Error
      end


      INT16SZ = 2

      # Expand a compressed name in a DNS Packet object. Please
      # see RFC1035 for an explanation of how the compression
      # in DNS packets works, how may it be useful and how should
      # be handled.
      #
      # This method accept two parameters: a raw packet data and an
      # offset, which indicates the point in the packet in which the
      # parsing has arrived.
      #
      def dn_expand(packet,offset)
        name = ""
        packetlen = packet.size
        while true
          raise ExpandError, "Offset is greater than packet length!" if packetlen < (offset+1)
          len = packet.unpack("@#{offset} C")[0]

          if len == 0
            offset += 1
            break
          elsif (len & 0xC0) == 0xC0
            raise ExpandError, "Packet ended before offset expand" if packetlen < (offset+INT16SZ)
            ptr = packet.unpack("@#{offset} n")[0]
            ptr &= 0x3FFF
            name2 = dn_expand(packet,ptr)[0]
            raise ExpandError, "Packet is malformed!" if name2 == nil
            name += name2
            offset += INT16SZ
            break
          else
            offset += 1
            raise ExpandError, "No expansion found" if packetlen < (offset+len)
            elem = packet[offset..offset+len-1]
            name += "#{elem}."
            offset += len
          end
        end
        [name, offset] # name.chomp(".") if trailing dot has to be omitted
      end

      def pack_name(name)
        if name.size > 255
          raise ArgumentError, "Name may not exceed 255 chars"
        end
        arr = name.split(".")
        str = ""
        arr.each do |elem|
          if elem.size > 63
            raise ArgumentError, "Label may not exceed 63 chars"
          end
          str += [elem.size,elem].pack("Ca*")
        end
        str += [0].pack("C")
        str
      end

      def names_array(name)
        arr = name.split(".")
        ar = []
        string = ""
        arr.size.times do |i|
          x = i+1
          elem = arr[-x]
          len = elem.size
          string = ((string.reverse)+([len,elem].pack("Ca*")).reverse).reverse
          ar.unshift(string)
        end
        return ar
      end

      def dn_comp(name,offset,compnames)
        names = {}
        ptr = 0
        str = ""
        arr = names_array(name)
        arr.each do |entry|
          if compnames.has_key?(entry)
            ptr = 0xC000 | compnames[entry]
            str += [ptr].pack("n")
            offset += INT16SZ
            break
          else
            len = entry.unpack("C")[0]
            elem = entry[1..len]
            str += [len,elem].pack("Ca*")
            names.update({"#{entry}" => offset})
            offset += len
          end
        end
        return str,offset,names
      end

      def valid?(name)
        return false if name.length < 1 or name.length > 255

        return true if name == '.' # the root domain is the only valid domain that begins with a dot

        parts = name.split('.', -1)
        parts.delete_at(parts.length-1) if parts.last.empty? # the domain may end with a dot

        parts.each do |part|
          if not part =~ /^[a-z0-9]([-a-z0-9]*[a-z0-9])?$/i or part.length < 1 or part.length > 63
            return false
          end
        end

        return true
      end
    end
  end
end
