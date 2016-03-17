require 'yaml'
require 'pp'

module Lita
  module Handlers
    class Lanch < Handler
      route(/lanch/i, :get_lanch)

      def get_lanch(response)
        lanch_config = YAML.load_file("config/config.yml")
        shop = lanch_config['launch']
        pp shop
        response.reply(shop.sample)
      end

      Lita.register_handler(self)
    end
  end
end
