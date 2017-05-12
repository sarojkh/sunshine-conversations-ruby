=begin
#Smooch

#The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

OpenAPI spec version: 1.2

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3-SNAPSHOT

=end

# Common files
require 'smooch-api/api_client'
require 'smooch-api/api_error'
require 'smooch-api/version'
require 'smooch-api/configuration'

# Models
require 'smooch-api/models/action'
require 'smooch-api/models/app'
require 'smooch-api/models/app_create'
require 'smooch-api/models/app_response'
require 'smooch-api/models/app_user'
require 'smooch-api/models/app_user_link'
require 'smooch-api/models/app_user_pre_create'
require 'smooch-api/models/app_user_response'
require 'smooch-api/models/app_user_update'
require 'smooch-api/models/client'
require 'smooch-api/models/client_info'
require 'smooch-api/models/conversation'
require 'smooch-api/models/destination'
require 'smooch-api/models/device_init'
require 'smooch-api/models/device_response'
require 'smooch-api/models/device_update'
require 'smooch-api/models/display_settings'
require 'smooch-api/models/event'
require 'smooch-api/models/get_messages_response'
require 'smooch-api/models/init'
require 'smooch-api/models/init_response'
require 'smooch-api/models/integration'
require 'smooch-api/models/integration_create'
require 'smooch-api/models/integration_response'
require 'smooch-api/models/jwt_response'
require 'smooch-api/models/list_apps_response'
require 'smooch-api/models/list_integrations_response'
require 'smooch-api/models/list_secret_keys_response'
require 'smooch-api/models/list_webhooks_response'
require 'smooch-api/models/menu'
require 'smooch-api/models/menu_item'
require 'smooch-api/models/menu_response'
require 'smooch-api/models/message'
require 'smooch-api/models/message_item'
require 'smooch-api/models/message_post'
require 'smooch-api/models/message_response'
require 'smooch-api/models/post_messages_response'
require 'smooch-api/models/secret_key'
require 'smooch-api/models/secret_key_create'
require 'smooch-api/models/secret_key_response'
require 'smooch-api/models/track_event_response'
require 'smooch-api/models/typing_activity_trigger'
require 'smooch-api/models/webhook'
require 'smooch-api/models/webhook_create'
require 'smooch-api/models/webhook_response'
require 'smooch-api/models/webhook_update'

# APIs
require 'smooch-api/api/app_api'
require 'smooch-api/api/app_user_api'
require 'smooch-api/api/conversation_api'
require 'smooch-api/api/init_api'
require 'smooch-api/api/integration_api'
require 'smooch-api/api/menu_api'
require 'smooch-api/api/webhook_api'

module SmoochApi
  class << self
    # Customize default settings for the SDK using block.
    #   SmoochApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
