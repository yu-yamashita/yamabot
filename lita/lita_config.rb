Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = "Lita"

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :debug

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  #config.robot.adapter = :shell
  config.robot.adapter = :slack
  config.adapters.slack.token = "xoxb-21545164851-HT1r1LXTW11bxKXG2Z1mSmOk"

  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  ## Example: Set options for the Redis connection.
  # config.redis.host = "127.0.0.1"
  # config.redis.port = 1234

  ## Example: Set configuration for any loaded handlers. See the handler's
  ## documentation for options.
  # config.handlers.some_handler.some_config_key = "value"

  #config.handlers.talk.docomo_api_key = '445a7a7736584b6d6e5a4c654c4e72386d6c6b435554555536746937534c426b5379744d564e4f2e344941'
  #config.handlers.talk.docomo_character_id = 20

  config.handlers.google_images.google_cse_id = "012078979414426078839:rezzql98rrs"
  config.handlers.google_images.google_cse_key =  "AIzaSyDTWN3WxBk7hS6ysD4cX5imInsaEmaiME0"
  config.handlers.google_images.safe_search = :medium

end
