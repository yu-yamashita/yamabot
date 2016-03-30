module Lita
	require 'net/http'
	require 'uri'
	require 'json'
	require 'pp'
  require 'pebbles/suddenly_death_string'

	module Handlers
		class Suddenly < Handler
			route /^suddenly\s+(\S.*)+/, :suddenly_death

			def suddenly_death(response)
				word = response.matches[0][0]
				response.reply word.to_suddenly_death
			end
		end
		Lita.register_handler(Suddenly)
	end
end
