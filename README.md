# smooch-ruby

SmoochApi - the Ruby gem for the Smooch API

The Smooch API is a unified interface for powering messaging in your customer experiences across every channel. Our API speeds access to new markets, reduces time to ship, eliminates complexity, and helps you build the best experiences for your customers. For more information, visit our [official documentation](https://docs.smooch.io).

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project using the [Smooch api spec](https://github.com/smooch/api-spec).

## Installation

Install the gem:

```shell
gem install smooch-api
```

Add this to the Gemfile:

    gem 'smooch-api', '~> 1.6.0'

## Getting Started

### Authentication with JSON Web Tokens (JWTs)

JSON Web Tokens (JWTs) are an industry standard authentication mechanism. A great introduction to the technology is available [here](https://jwt.io/introduction/), and a broad set of supported JWT libraries for a variety of languages and platforms are available.

A JWT is composed of a header, a payload, and a signature. The payload contains information called claims which describe the subject to whom the token was issued.

Before you can make calls to the Smooch API, you'll need to create a JWT that proves you are authorized to use the API.

#### **Step 1** Generate a KEY ID and SECRET on the settings tab in the [Smooch Dashboard](https://app.smooch.io/).

![secret key and id](https://docs.smooch.io/images/secret_keys.png)

 #### **Step 2** Generate the JWT

Using the [ruby-jwt](https://github.com/jwt/ruby-jwt) gem:

```ruby
require 'jwt'

payload = {:scope => 'app'}
jwtHeader = {:kid => KEY_ID}

token = JWT.encode payload, SECRET, 'HS256', jwtHeader
```

### Running the code

```ruby
# Load the gem
require 'smooch-api'

# Setup authorization
SmoochApi.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['Authorization'] = 'YOUR JWT'
  config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = SmoochApi::AppApi.new

app_create_body = SmoochApi::AppCreate.new # AppCreate | Body for a createApp request.


begin
  result = api_instance.create_app(app_create_body)
  p result
rescue SmoochApi::ApiError => e
  puts "Exception when calling AppApi->create_app: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.smooch.io/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SmoochApi::AppApi* | [**create_app**](docs/AppApi.md#create_app) | **POST** /apps | 
*SmoochApi::AppApi* | [**create_secret_key**](docs/AppApi.md#create_secret_key) | **POST** /apps/{appId}/keys | 
*SmoochApi::AppApi* | [**delete_app**](docs/AppApi.md#delete_app) | **DELETE** /apps/{appId} | 
*SmoochApi::AppApi* | [**delete_secret_key**](docs/AppApi.md#delete_secret_key) | **DELETE** /apps/{appId}/keys/{keyId} | 
*SmoochApi::AppApi* | [**get_app**](docs/AppApi.md#get_app) | **GET** /apps/{appId} | 
*SmoochApi::AppApi* | [**get_app_jwt**](docs/AppApi.md#get_app_jwt) | **GET** /apps/{appId}/keys/{keyId}/jwt | 
*SmoochApi::AppApi* | [**get_secret_key**](docs/AppApi.md#get_secret_key) | **GET** /apps/{appId}/keys/{keyId} | 
*SmoochApi::AppApi* | [**list_apps**](docs/AppApi.md#list_apps) | **GET** /apps | 
*SmoochApi::AppApi* | [**list_secret_keys**](docs/AppApi.md#list_secret_keys) | **GET** /apps/{appId}/keys | 
*SmoochApi::AppApi* | [**update_app**](docs/AppApi.md#update_app) | **PUT** /apps/{appId} | 
*SmoochApi::AppUserApi* | [**app_user_device_update**](docs/AppUserApi.md#app_user_device_update) | **PUT** /appusers/{userId}/devices/{deviceId} | 
*SmoochApi::AppUserApi* | [**delete_app_user_profile**](docs/AppUserApi.md#delete_app_user_profile) | **DELETE** /appusers/{userId}/profile | 
*SmoochApi::AppUserApi* | [**get_app_user**](docs/AppUserApi.md#get_app_user) | **GET** /appusers/{userId} | 
*SmoochApi::AppUserApi* | [**get_app_user_entity_ids**](docs/AppUserApi.md#get_app_user_entity_ids) | **GET** /appusers/{userId}/channels | 
*SmoochApi::AppUserApi* | [**link_app_user**](docs/AppUserApi.md#link_app_user) | **POST** /appusers/{userId}/channels | 
*SmoochApi::AppUserApi* | [**post_image_message**](docs/AppUserApi.md#post_image_message) | **POST** /appusers/{userId}/images | 
*SmoochApi::AppUserApi* | [**pre_create_app_user**](docs/AppUserApi.md#pre_create_app_user) | **POST** /appusers | 
*SmoochApi::AppUserApi* | [**track_event**](docs/AppUserApi.md#track_event) | **POST** /appusers/{userId}/events | 
*SmoochApi::AppUserApi* | [**unlink_app_user**](docs/AppUserApi.md#unlink_app_user) | **DELETE** /appusers/{userId}/channels/{channel} | 
*SmoochApi::AppUserApi* | [**update_app_user**](docs/AppUserApi.md#update_app_user) | **PUT** /appusers/{userId} | 
*SmoochApi::ConversationApi* | [**delete_messages**](docs/ConversationApi.md#delete_messages) | **DELETE** /appusers/{userId}/messages | 
*SmoochApi::ConversationApi* | [**get_messages**](docs/ConversationApi.md#get_messages) | **GET** /appusers/{userId}/messages | 
*SmoochApi::ConversationApi* | [**post_message**](docs/ConversationApi.md#post_message) | **POST** /appusers/{userId}/messages | 
*SmoochApi::ConversationApi* | [**reset_unread_count**](docs/ConversationApi.md#reset_unread_count) | **POST** /appusers/{userId}/conversation/read | 
*SmoochApi::ConversationApi* | [**trigger_typing_activity**](docs/ConversationApi.md#trigger_typing_activity) | **POST** /appusers/{userId}/conversation/activity | 
*SmoochApi::InitApi* | [**init**](docs/InitApi.md#init) | **POST** /init | 
*SmoochApi::IntegrationApi* | [**create_integration**](docs/IntegrationApi.md#create_integration) | **POST** /apps/{appId}/integrations | 
*SmoochApi::IntegrationApi* | [**create_integration_menu**](docs/IntegrationApi.md#create_integration_menu) | **POST** /apps/{appId}/integrations/{integrationId}/menu | 
*SmoochApi::IntegrationApi* | [**delete_integration**](docs/IntegrationApi.md#delete_integration) | **DELETE** /apps/{appId}/integrations/{integrationId} | 
*SmoochApi::IntegrationApi* | [**delete_integration_menu**](docs/IntegrationApi.md#delete_integration_menu) | **DELETE** /apps/{appId}/integrations/{integrationId}/menu | 
*SmoochApi::IntegrationApi* | [**get_integration**](docs/IntegrationApi.md#get_integration) | **GET** /apps/{appId}/integrations/{integrationId} | 
*SmoochApi::IntegrationApi* | [**get_integration_menu**](docs/IntegrationApi.md#get_integration_menu) | **GET** /apps/{appId}/integrations/{integrationId}/menu | 
*SmoochApi::IntegrationApi* | [**list_integrations**](docs/IntegrationApi.md#list_integrations) | **GET** /apps/{appId}/integrations | 
*SmoochApi::IntegrationApi* | [**update_integration_menu**](docs/IntegrationApi.md#update_integration_menu) | **PUT** /apps/{appId}/integrations/{integrationId}/menu | 
*SmoochApi::MenuApi* | [**delete_menu**](docs/MenuApi.md#delete_menu) | **DELETE** /menu | 
*SmoochApi::MenuApi* | [**get_menu**](docs/MenuApi.md#get_menu) | **GET** /menu | 
*SmoochApi::MenuApi* | [**update_menu**](docs/MenuApi.md#update_menu) | **PUT** /menu | 
*SmoochApi::WebhookApi* | [**create_webhook**](docs/WebhookApi.md#create_webhook) | **POST** /apps/{appId}/webhooks | 
*SmoochApi::WebhookApi* | [**delete_webhook**](docs/WebhookApi.md#delete_webhook) | **DELETE** /apps/{appId}/webhooks/{webhookId} | 
*SmoochApi::WebhookApi* | [**get_webhook**](docs/WebhookApi.md#get_webhook) | **GET** /apps/{appId}/webhooks/{webhookId} | 
*SmoochApi::WebhookApi* | [**list_webhooks**](docs/WebhookApi.md#list_webhooks) | **GET** /apps/{appId}/webhooks | 
*SmoochApi::WebhookApi* | [**update_webhook**](docs/WebhookApi.md#update_webhook) | **PUT** /apps/{appId}/webhooks/{webhookId} | 


## Documentation for Models

 - [SmoochApi::Action](docs/Action.md)
 - [SmoochApi::App](docs/App.md)
 - [SmoochApi::AppCreate](docs/AppCreate.md)
 - [SmoochApi::AppResponse](docs/AppResponse.md)
 - [SmoochApi::AppSettings](docs/AppSettings.md)
 - [SmoochApi::AppUpdate](docs/AppUpdate.md)
 - [SmoochApi::AppUser](docs/AppUser.md)
 - [SmoochApi::AppUserLink](docs/AppUserLink.md)
 - [SmoochApi::AppUserPreCreate](docs/AppUserPreCreate.md)
 - [SmoochApi::AppUserResponse](docs/AppUserResponse.md)
 - [SmoochApi::AppUserUpdate](docs/AppUserUpdate.md)
 - [SmoochApi::Client](docs/Client.md)
 - [SmoochApi::ClientInfo](docs/ClientInfo.md)
 - [SmoochApi::Conversation](docs/Conversation.md)
 - [SmoochApi::Destination](docs/Destination.md)
 - [SmoochApi::DeviceInit](docs/DeviceInit.md)
 - [SmoochApi::DeviceResponse](docs/DeviceResponse.md)
 - [SmoochApi::DeviceUpdate](docs/DeviceUpdate.md)
 - [SmoochApi::DisplaySettings](docs/DisplaySettings.md)
 - [SmoochApi::Event](docs/Event.md)
 - [SmoochApi::GetMessagesResponse](docs/GetMessagesResponse.md)
 - [SmoochApi::Init](docs/Init.md)
 - [SmoochApi::InitResponse](docs/InitResponse.md)
 - [SmoochApi::Integration](docs/Integration.md)
 - [SmoochApi::IntegrationCreate](docs/IntegrationCreate.md)
 - [SmoochApi::IntegrationResponse](docs/IntegrationResponse.md)
 - [SmoochApi::JwtResponse](docs/JwtResponse.md)
 - [SmoochApi::ListAppsResponse](docs/ListAppsResponse.md)
 - [SmoochApi::ListIntegrationsResponse](docs/ListIntegrationsResponse.md)
 - [SmoochApi::ListSecretKeysResponse](docs/ListSecretKeysResponse.md)
 - [SmoochApi::ListWebhooksResponse](docs/ListWebhooksResponse.md)
 - [SmoochApi::Menu](docs/Menu.md)
 - [SmoochApi::MenuItem](docs/MenuItem.md)
 - [SmoochApi::MenuResponse](docs/MenuResponse.md)
 - [SmoochApi::Message](docs/Message.md)
 - [SmoochApi::MessageItem](docs/MessageItem.md)
 - [SmoochApi::MessagePost](docs/MessagePost.md)
 - [SmoochApi::MessageResponse](docs/MessageResponse.md)
 - [SmoochApi::SecretKey](docs/SecretKey.md)
 - [SmoochApi::SecretKeyCreate](docs/SecretKeyCreate.md)
 - [SmoochApi::SecretKeyResponse](docs/SecretKeyResponse.md)
 - [SmoochApi::TrackEventResponse](docs/TrackEventResponse.md)
 - [SmoochApi::TypingActivityTrigger](docs/TypingActivityTrigger.md)
 - [SmoochApi::Webhook](docs/Webhook.md)
 - [SmoochApi::WebhookCreate](docs/WebhookCreate.md)
 - [SmoochApi::WebhookResponse](docs/WebhookResponse.md)
 - [SmoochApi::WebhookUpdate](docs/WebhookUpdate.md)


## Documentation for Authorization


### jwt

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

