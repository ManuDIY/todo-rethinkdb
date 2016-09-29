require 'nobrainer'

NoBrainer.configure do |config|
  # app_name is the name of your application in lowercase.
  # When using Rails, the application name is automatically inferred.
  config.app_name = 'Todo'
  config.user_timezone = :utc
end
