module Lita
 require 'net/http'
 require 'uri'
 require 'json'
 require 'pp'
 require 'date'

  module Handlers
    class fortune < Handler
      route(/^占い/i, :get_fortune)
      def get_fortune(resp)
     
        t = Time.now
        date = t.strftime("%Y/%m/%d")
        url = "http://api.jugemkey.jp/api/horoscope/free/#{date}"
        
        uri = URI.parse(url)
        json = Net::HTTP.get(uri)
        result = JSON.parse(json)

        reply = ""

        reply += "#{result['title']}\n"
        reply += "#{result['link']}\n"
        reply += "#{result['publicTime']}\n"
        
        result['forecasts'].each do |forecast|
         reply += "予報日:#{forecast['dateLabel']}\n"
         reply += "天気:#{forecast['telop']}\n"
         reply += "\n"
        end

        resp.reply(reply)
      end

      route(/^天使/i, :get_tenshi)
      def get_tenshi(resp)
        tenshi_list = %w{
          http://e-poket.com/illust/toukou/img/k05.jpg
          http://diarynote.jp/data/blogs/l/20150206/99164_201502061619302791_1.jpg
        }.freeze
        resp.reply(tenshi_list.sample)
      end
      Lita.register_handler(self)
    end
  end
end
