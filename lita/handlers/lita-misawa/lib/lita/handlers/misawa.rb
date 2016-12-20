module Lita
 require 'json'

  module Handlers
    class Ikemen < Handler
      route(/^ミサワ/i, :get_misawa)

      def get_misawa(resp)
        File.open("config/meigens.json") do |file|
          meigens = JSON.load(file)
          meigen = Hash[meigens.to_a.sample]
          @image = meigen['image']
        end
        resp.reply(@image)
      end

      Lita.register_handler(self)
    end
  end
end
