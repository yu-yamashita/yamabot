module Lita
 require 'pp'
 require 'yaml'

  module Handlers
    class Ikemen < Handler
      route(/^イケメン/i, :get_ikemen)

      def get_ikemen(resp)
        ikemens = YAML.load_file("config/ikemens.yml")
        resp.reply(ikemens.sample)
      end

      Lita.register_handler(self)
    end
  end
end
